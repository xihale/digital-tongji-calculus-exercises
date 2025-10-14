#!/usr/bin/env python3
import os
import re
import glob

def fix_diff_to_dif(file_path):
    """将数学表达式中的 diff 替换为 dif"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 将数学表达式中的 diff 替换为 dif
    # 注意：只在 $...$ 内替换
    patterns = [
        (r'\$(.*?)(diff)(.*?)\$', r'$\1dif\3$'),
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
        if fix_diff_to_dif(file_path):
            fixed_count += 1
    
    print(f"\n修复完成！共修复了 {fixed_count} 个文件")
    print("现在尝试编译项目...")
    
    # 尝试编译项目
    result = os.system("./build.sh")
    
    if result == 0:
        print("✅ 编译成功！")
    else:
        print("❌ 编译失败，请检查剩余的编译错误")

if __name__ == "__main__":
    main()