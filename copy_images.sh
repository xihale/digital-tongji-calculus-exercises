#!/bin/bash
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
