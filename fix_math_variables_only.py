#!/usr/bin/env python3
import os
import re
import glob

def fix_math_variables_only(file_path):
    """只修复数学表达式中的变量分隔问题，不碰Typst代码"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 只修复数学表达式中的变量分隔问题
    # 使用更精确的正则表达式，确保只在数学模式中修复
    patterns = [
        # 修复数学表达式中的变量：确保在 $...$ 内
        (r'\$(.*?)(dx)(.*?)\$', r'$\1d x\3$'),
        (r'\$(.*?)(dy)(.*?)\$', r'$\1d y\3$'),
        (r'\$(.*?)(dt)(.*?)\$', r'$\1d t\3$'),
        (r'\$(.*?)(du)(.*?)\$', r'$\1d u\3$'),
        (r'\$(.*?)(bx)(.*?)\$', r'$\1b x\3$'),
        (r'\$(.*?)(ac)(.*?)\$', r'$\1a c\3$'),
    ]
    
    original_content = content
    for pattern, replacement in patterns:
        content = re.sub(pattern, replacement, content)
    
    if content != original_content:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"修复了文件: {file_path}")
        return True
    return False

def main():
    # 获取所有.typ文件
    typ_files = glob.glob("**/*.typ", recursive=True)
    
    fixed_count = 0
    for file_path in typ_files:
        if fix_math_variables_only(file_path):
            fixed_count += 1
    
    print(f"\n修复完成！共修复了 {fixed_count} 个文件")
    print("现在尝试编译项目...")
    
    # 尝试编译项目
    os.system("./build.sh")

if __name__ == "__main__":
    main()