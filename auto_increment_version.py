#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
自动版本递增脚本
Auto Version Increment Script

用于自动递增被修改章节的版本号
Automatically increments version numbers for modified chapters
"""

import re
import sys
import argparse
from pathlib import Path

def increment_version(version, increment_type='patch'):
    """
    递增版本号
    Increment version number
    
    Args:
        version: 版本号字符串，如 "1.0.0"
        increment_type: 递增类型，可选值：'major', 'minor', 'patch'
    
    Returns:
        新版本号字符串
    """
    parts = [int(p) for p in version.split('.')]
    
    if increment_type == 'major':
        parts[0] += 1
        parts[1] = 0
        parts[2] = 0
    elif increment_type == 'minor':
        parts[1] += 1
        parts[2] = 0
    else:  # patch
        parts[2] += 1
    
    return '.'.join(map(str, parts))

def update_chapter_version(versions_file, chapter_name, increment_type='patch', version_type='question'):
    """
    更新指定章节的版本号
    Update version for a specific chapter
    
    Args:
        versions_file: versions.typ 文件路径
        chapter_name: 章节名称
        increment_type: 递增类型 ('major', 'minor', 'patch')
        version_type: 版本类型 ('question' 或 'answer')
    
    Returns:
        (old_version, new_version) 元组，如果未找到返回 None
    """
    with open(versions_file, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 确定要更新的版本字典
    dict_name = "CHAPTER_VERSIONS" if version_type == 'question' else "ANSWER_VERSIONS"
    
    # 查找版本号
    pattern = r'(#let ' + dict_name + r' = \(.*?)("' + re.escape(chapter_name) + r'":\s*)"([0-9.]+)"(.*?\))'
    match = re.search(pattern, content, re.DOTALL)
    
    if not match:
        print(f"未找到章节 '{chapter_name}' 的{version_type}版本配置")
        return None
    
    old_version = match.group(3)
    new_version = increment_version(old_version, increment_type)
    
    # 替换版本号
    new_content = re.sub(
        pattern,
        lambda m: f'{m.group(1)}{m.group(2)}"{new_version}"{m.group(4)}',
        content,
        flags=re.DOTALL
    )
    
    with open(versions_file, 'w', encoding='utf-8') as f:
        f.write(new_content)
    
    return (old_version, new_version)

def main():
    parser = argparse.ArgumentParser(
        description='自动递增章节版本号 / Auto-increment chapter versions'
    )
    parser.add_argument(
        'chapters',
        nargs='+',
        help='章节名称列表 / List of chapter names'
    )
    parser.add_argument(
        '--type',
        choices=['patch', 'minor', 'major'],
        default='patch',
        help='递增类型 / Increment type (default: patch)'
    )
    parser.add_argument(
        '--version-type',
        choices=['question', 'answer', 'both'],
        default='question',
        help='版本类型 / Version type to update (default: question)'
    )
    parser.add_argument(
        '--versions-file',
        default='versions.typ',
        help='版本配置文件路径 / Path to versions.typ file'
    )
    
    args = parser.parse_args()
    
    versions_file = Path(args.versions_file)
    if not versions_file.exists():
        print(f"错误: 找不到版本文件 {versions_file}")
        sys.exit(1)
    
    print("=" * 60)
    print("自动版本递增")
    print("=" * 60)
    
    for chapter in args.chapters:
        print(f"\n处理章节: {chapter}")
        
        if args.version_type in ['question', 'both']:
            result = update_chapter_version(
                versions_file, chapter, args.type, 'question'
            )
            if result:
                old_ver, new_ver = result
                print(f"  题目版本: {old_ver} → {new_ver}")
        
        if args.version_type in ['answer', 'both']:
            result = update_chapter_version(
                versions_file, chapter, args.type, 'answer'
            )
            if result:
                old_ver, new_ver = result
                print(f"  答案版本: {old_ver} → {new_ver}")
    
    print("\n" + "=" * 60)
    print("版本更新完成")
    print("=" * 60)

if __name__ == '__main__':
    main()
