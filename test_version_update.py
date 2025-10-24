#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
版本更新测试脚本
Test script to demonstrate version update workflow
"""

import re
import sys
from pathlib import Path

def update_version(file_path, chapter_name, new_version, is_answer=False):
    """更新指定章节的版本号"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 确定要更新的版本类型
    version_type = "ANSWER_VERSIONS" if is_answer else "CHAPTER_VERSIONS"
    
    # 使用正则表达式查找并替换版本号
    pattern = f'("{chapter_name}":\\s*)"([0-9.]+)"'
    
    # 查找版本配置块
    if is_answer:
        block_pattern = r'(#let ANSWER_VERSIONS = \(.*?)(\"' + re.escape(chapter_name) + r'\":\s*\"[0-9.]+\")(.*?\))'
    else:
        block_pattern = r'(#let CHAPTER_VERSIONS = \(.*?)(\"' + re.escape(chapter_name) + r'\":\s*\"[0-9.]+\")(.*?\))'
    
    def replacer(match):
        return f'{match.group(1)}"{chapter_name}": "{new_version}"{match.group(3)}'
    
    new_content = re.sub(block_pattern, replacer, content, flags=re.DOTALL)
    
    if new_content != content:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        return True
    return False

def main():
    print("=" * 60)
    print("版本更新测试演示")
    print("=" * 60)
    
    script_dir = Path(__file__).parent
    versions_file = script_dir / 'versions.typ'
    
    print("\n测试场景：更新第二章的题目版本从 1.0.0 到 1.0.1\n")
    
    # 显示更新前的版本信息
    print("更新前版本信息:")
    import subprocess
    result = subprocess.run([sys.executable, str(script_dir / 'check_versions.py')], 
                          capture_output=True, text=True)
    print(result.stdout)
    
    # 执行更新
    print("\n执行版本更新...")
    success = update_version(versions_file, "第二章 导数与微分", "1.0.1", is_answer=False)
    
    if success:
        print("✓ 成功更新第二章题目版本到 1.0.1")
    else:
        print("✗ 版本更新失败")
        return
    
    # 显示更新后的版本信息
    print("\n更新后版本信息:")
    result = subprocess.run([sys.executable, str(script_dir / 'check_versions.py')], 
                          capture_output=True, text=True)
    print(result.stdout)
    
    # 恢复原始版本
    print("\n恢复原始版本...")
    update_version(versions_file, "第二章 导数与微分", "1.0.0", is_answer=False)
    print("✓ 已恢复到原始版本")

if __name__ == '__main__':
    main()
