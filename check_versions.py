#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
版本管理辅助脚本
用于检查哪些章节的版本有更新，需要在 release 时上传

Version Management Helper Script
Check which chapters have version updates and need to be uploaded in release
"""

import re
import sys
from pathlib import Path

def parse_versions_file(file_path):
    """解析 versions.typ 文件，提取版本信息"""
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 提取 CHAPTER_VERSIONS
    chapter_pattern = r'#let CHAPTER_VERSIONS = \((.*?)\)'
    chapter_match = re.search(chapter_pattern, content, re.DOTALL)
    chapter_versions = {}
    if chapter_match:
        lines = chapter_match.group(1).strip().split('\n')
        for line in lines:
            if ':' in line:
                parts = line.split(':', 1)
                key = parts[0].strip().strip('"')
                value = parts[1].strip().rstrip(',').strip('"')
                if key and value:
                    chapter_versions[key] = value
    
    # 提取 ANSWER_VERSIONS
    answer_pattern = r'#let ANSWER_VERSIONS = \((.*?)\)'
    answer_match = re.search(answer_pattern, content, re.DOTALL)
    answer_versions = {}
    if answer_match:
        lines = answer_match.group(1).strip().split('\n')
        for line in lines:
            if ':' in line:
                parts = line.split(':', 1)
                key = parts[0].strip().strip('"')
                value = parts[1].strip().rstrip(',').strip('"')
                if key and value:
                    answer_versions[key] = value
    
    return chapter_versions, answer_versions

def get_latest_version(versions):
    """获取最新版本号"""
    if not versions:
        return "1.0.0"
    
    all_versions = list(versions.values())
    # 简单的字符串比较（适用于语义化版本）
    return max(all_versions)

def compare_versions(v1, v2):
    """比较两个版本号，返回 True 如果 v1 > v2"""
    parts1 = [int(x) for x in v1.split('.')]
    parts2 = [int(x) for x in v2.split('.')]
    
    for p1, p2 in zip(parts1, parts2):
        if p1 > p2:
            return True
        elif p1 < p2:
            return False
    return False

def main():
    # 获取项目根目录
    script_dir = Path(__file__).parent
    versions_file = script_dir / 'versions.typ'
    
    if not versions_file.exists():
        print(f"错误: 找不到 {versions_file}")
        sys.exit(1)
    
    # 解析版本文件
    chapter_versions, answer_versions = parse_versions_file(versions_file)
    
    # 显示当前版本信息
    print("=" * 60)
    print("当前版本信息")
    print("=" * 60)
    print("\n章节题目版本:")
    for chapter, version in sorted(chapter_versions.items()):
        print(f"  {chapter}: {version}")
    
    print("\n章节答案版本:")
    for chapter, version in sorted(answer_versions.items()):
        print(f"  {chapter}: {version}")
    
    # 获取主文件版本
    main_version = get_latest_version({**chapter_versions, **answer_versions})
    print(f"\n主文件版本 (自动): {main_version}")
    
    print("\n" + "=" * 60)
    print("版本管理说明")
    print("=" * 60)
    print("""
1. 修改题目内容时，更新对应章节的 CHAPTER_VERSIONS
2. 修改答案内容时，更新对应章节的 ANSWER_VERSIONS
3. 主文件版本会自动与所有章节的最新版本对齐
4. 发布 Release 时，只需上传版本号有变化的章节和主文件

版本号格式: 主版本.次版本.修订号
  - 主版本: 重大变更 (如章节重组)
  - 次版本: 内容更新 (如新增/修改题目)
  - 修订号: 小修改 (如错误修正)
""")

if __name__ == '__main__':
    main()
