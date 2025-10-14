#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
图片替换脚本 - 将图片引用转换为Typst格式
将图片路径转换为：章节目录/images/节.图片序号.xxx 格式
"""

import os
import re
import glob
from pathlib import Path

def find_typst_files():
    """查找所有Typst文件"""
    typst_files = []
    for root, dirs, files in os.walk("."):
        for file in files:
            if file.endswith(".typ"):
                typst_files.append(os.path.join(root, file))
    return typst_files

def parse_chapter_section(filename):
    """解析章节和节信息"""
    path = Path(filename)
    # 获取章节目录名
    chapter_dir = path.parent.name
    # 获取节文件名（不含扩展名）
    section_name = path.stem
    
    # 提取章节编号
    chapter_match = re.search(r'第(\d+)章', chapter_dir)
    chapter_num = chapter_match.group(1) if chapter_match else ""
    
    # 提取节编号 - 修正解析逻辑
    section_match = re.search(r'第(\d+)节', section_name)
    if section_match:
        section_num = section_match.group(1)
    else:
        # 如果无法解析节编号，尝试从文件名中提取数字
        num_match = re.search(r'(\d+)', section_name)
        section_num = num_match.group(1) if num_match else ""
    
    return chapter_num, section_num, chapter_dir, section_name

def find_image_references(content):
    """在Typst内容中查找图片引用"""
    # 查找现有的图片引用
    image_patterns = [
        r'#figure\(\s*image\(["\']([^"\']+)["\'][^)]*\)[^)]*\)',  # #figure(image(...))
        r'image\(["\']([^"\']+)["\'][^)]*\)',  # image(...)
    ]
    
    image_refs = []
    
    for pattern in image_patterns:
        matches = re.finditer(pattern, content)
        for match in matches:
            image_refs.append({
                'original': match.group(0),
                'filename': match.group(1),
                'start': match.start(),
                'end': match.end()
            })
    
    return image_refs

def create_new_image_path(chapter_num, section_num, image_filename, image_counter):
    """创建新的图片路径"""
    # 提取文件扩展名
    ext = Path(image_filename).suffix.lower()
    
    # 生成新的图片文件名：节.图片序号.扩展名
    new_filename = f"{section_num}.{image_counter}{ext}"
    
    # 生成完整路径
    new_path = f"images/{new_filename}"
    
    return new_path

def convert_to_typst_image(new_image_path, width="80%"):
    """生成Typst格式的图片引用"""
    return f'#figure(\n  image("{new_image_path}", width: {width}))'

def process_typst_file(filename):
    """处理单个Typst文件"""
    print(f"处理文件: {filename}")
    
    # 解析章节和节信息
    chapter_num, section_num, chapter_dir, section_name = parse_chapter_section(filename)
    
    if not chapter_num or not section_num:
        print(f"  ⚠️  无法解析章节信息: {filename}")
        return False
    
    # 读取文件内容
    with open(filename, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 查找图片引用
    image_refs = find_image_references(content)
    
    if not image_refs:
        print(f"  ℹ️  未找到图片引用")
        return True
    
    print(f"  找到 {len(image_refs)} 个图片引用")
    
    # 处理图片引用
    modified_content = content
    image_counter = 1
    
    for ref in image_refs:
        old_ref = ref['original']
        old_filename = ref['filename']
        
        # 创建新的图片路径
        new_image_path = create_new_image_path(chapter_num, section_num, old_filename, image_counter)
        
        # 生成新的Typst图片引用
        new_typst_ref = convert_to_typst_image(new_image_path)
        
        print(f"    {old_filename} -> {new_image_path}")
        
        # 替换内容
        modified_content = modified_content.replace(old_ref, new_typst_ref)
        image_counter += 1
    
    # 写回文件
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(modified_content)
    
    print(f"  ✅ 处理完成")
    return True

def create_images_directories():
    """在每个章节目录下创建images目录"""
    for root, dirs, files in os.walk("."):
        if "第" in root and "章" in root:
            images_dir = os.path.join(root, "images")
            if not os.path.exists(images_dir):
                os.makedirs(images_dir)
                print(f"创建目录: {images_dir}")

def generate_copy_script():
    """生成图片复制脚本"""
    script_content = """#!/bin/bash
# 图片复制脚本 - 将图片文件复制到相应的images目录

# 查找所有Typst文件并分析图片引用
for file in $(find . -name "*.typ"); do
    echo "分析文件: $file"
    
    # 提取章节和节信息
    chapter_dir=$(dirname "$file")
    section_name=$(basename "$file" .typ)
    
    # 提取章节编号
    chapter_num=$(echo "$chapter_dir" | grep -o '第[0-9]*章' | grep -o '[0-9]*' || echo "")
    section_num=$(echo "$section_name" | grep -o '第[0-9]*节' | grep -o '[0-9]*' || echo "")
    
    if [ -n "$chapter_num" ] && [ -n "$section_num" ]; then
        # 查找文件中的图片引用
        grep -o 'image("[^"]*"' "$file" | sed 's/image("//g' | sed 's/"//g' | while read -r old_image; do
            if [ -n "$old_image" ] && [ "$old_image" != "images/"* ]; then
                # 生成新的图片文件名
                ext="${old_image##*.}"
                new_image="images/${section_num}.${ext}"
                
                echo "复制: $old_image -> $chapter_dir/$new_image"
                
                # 如果原图片文件存在，则复制
                if [ -f "$old_image" ]; then
                    cp "$old_image" "$chapter_dir/$new_image"
                else
                    echo "  警告: 原图片文件不存在: $old_image"
                fi
            fi
        done
    fi
done

echo "图片复制完成"
"""
    
    with open("copy_images.sh", "w", encoding="utf-8") as f:
        f.write(script_content)
    
    # 设置执行权限
    os.chmod("copy_images.sh", 0o755)
    print("生成图片复制脚本: copy_images.sh")

def main():
    """主函数"""
    print("=== Typst图片路径替换工具 ===\n")
    
    # 创建images目录
    print("1. 创建images目录...")
    create_images_directories()
    
    # 查找所有Typst文件
    print("\n2. 查找Typst文件...")
    typst_files = find_typst_files()
    print(f"找到 {len(typst_files)} 个Typst文件")
    
    # 处理每个文件
    print("\n3. 处理Typst文件...")
    processed_count = 0
    
    for file in typst_files:
        if process_typst_file(file):
            processed_count += 1
    
    # 生成图片复制脚本
    print("\n4. 生成图片复制脚本...")
    generate_copy_script()
    
    print(f"\n=== 处理完成 ===")
    print(f"处理文件数: {processed_count}/{len(typst_files)}")
    print("\n接下来请执行以下步骤:")
    print("1. 检查替换后的Typst文件内容")
    print("2. 运行 ./copy_images.sh 来复制图片文件")
    print("3. 验证图片显示是否正确")

if __name__ == "__main__":
    main()