#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简化版图片替换脚本 - 直接处理图片引用为Typst格式
将图片路径转换为：images/文件名.xxx 格式
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

def create_new_image_path(image_filename):
    """创建新的图片路径"""
    # 如果已经是相对路径，保持原样
    if image_filename.startswith("images/") or "/" not in image_filename:
        return image_filename
    
    # 只保留文件名，移动到images目录
    filename = Path(image_filename).name
    return f"images/{filename}"

def convert_to_typst_image(new_image_path, width="80%"):
    """生成Typst格式的图片引用"""
    return f'#figure(\n  image("{new_image_path}", width: {width}))'

def process_typst_file(filename):
    """处理单个Typst文件"""
    print(f"处理文件: {filename}")
    
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
    
    for ref in image_refs:
        old_ref = ref['original']
        old_filename = ref['filename']
        
        # 创建新的图片路径
        new_image_path = create_new_image_path(old_filename)
        
        # 生成新的Typst图片引用
        new_typst_ref = convert_to_typst_image(new_image_path)
        
        print(f"    {old_filename} -> {new_image_path}")
        
        # 替换内容
        modified_content = modified_content.replace(old_ref, new_typst_ref)
    
    # 写回文件
    with open(filename, 'w', encoding='utf-8') as f:
        f.write(modified_content)
    
    print(f"  ✅ 处理完成")
    return True

def create_images_directories():
    """在每个包含Typst文件的目录下创建images目录"""
    typst_dirs = set()
    
    # 查找所有包含Typst文件的目录
    for root, dirs, files in os.walk("."):
        for file in files:
            if file.endswith(".typ"):
                typst_dirs.add(root)
    
    # 在每个目录下创建images目录
    for directory in typst_dirs:
        images_dir = os.path.join(directory, "images")
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
    
    # 获取文件所在目录
    file_dir=$(dirname "$file")
    
    # 查找文件中的图片引用
    grep -o 'image("[^"]*"' "$file" | sed 's/image("//g' | sed 's/"//g' | while read -r old_image; do
        if [ -n "$old_image" ] && [ "$old_image" != "images/"* ]; then
            # 只保留文件名
            filename=$(basename "$old_image")
            new_image="images/$filename"
            
            echo "复制: $old_image -> $file_dir/$new_image"
            
            # 如果原图片文件存在，则复制
            if [ -f "$old_image" ]; then
                cp "$old_image" "$file_dir/$new_image"
            else
                echo "  警告: 原图片文件不存在: $old_image"
            fi
        fi
    done
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
    print("=== 简化版Typst图片路径替换工具 ===\n")
    
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