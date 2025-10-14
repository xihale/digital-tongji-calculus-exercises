#!/usr/bin/env python3
import os
import re
import glob

def fix_specific_variables(file_path):
    """只修复特定的变量分隔问题"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 只修复真正需要空格的变量
    # 希腊字母（pi, xi, eta 等）、数学函数（cos, sin, tan 等）、iff 都不动
    patterns = [
        # 修复微分符号
        (r'\$(.*?)(dx)(.*?)\$', r'$\1d x\3$'),
        (r'\$(.*?)(dy)(.*?)\$', r'$\1d y\3$'),
        (r'\$(.*?)(dt)(.*?)\$', r'$\1d t\3$'),
        (r'\$(.*?)(du)(.*?)\$', r'$\1d u\3$'),
        
        # 修复代数变量
        (r'\$(.*?)(bx)(.*?)\$', r'$\1b x\3$'),
        (r'\$(.*?)(ac)(.*?)\$', r'$\1a c\3$'),
        
        # 注意：iff, pi, xi, eta, cos, sin, tan, ln 等都不动
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
        if fix_specific_variables(file_path):
            fixed_count += 1
    
    print(f"\n修复完成！共修复了 {fixed_count} 个文件")
    print("现在尝试编译项目...")
    
    # 尝试编译项目
    os.system("./build.sh")

if __name__ == "__main__":
    main()