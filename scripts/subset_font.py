#!/usr/bin/env python3
"""
字体精简脚本 / Font Subsetting Script

这个脚本用于创建精简版 LXGW WenKai 字体，只包含项目中使用的字符。
使用方法：
1. 安装依赖: pip install fonttools brotli
2. 运行脚本: python3 subset_font.py

作者：GitHub Copilot
日期：2025-10-24
"""

import os
import re
import string
import subprocess
from pathlib import Path

def extract_characters_from_file(file_path):
    """从文件中提取所有中文字符"""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
            chars = set()
            for char in content:
                code_point = ord(char)
                if (0x4E00 <= code_point <= 0x9FFF or  # 主要 CJK 字符
                    0x3400 <= code_point <= 0x4DBF or  # 扩展 A
                    0xF900 <= code_point <= 0xFAFF or  # 兼容性字符
                    0x3000 <= code_point <= 0x303F or  # CJK 符号和标点
                    0xFF00 <= code_point <= 0xFFEF):   # 全角字符
                    chars.add(char)
            return chars
    except Exception as e:
        print(f"读取文件错误 {file_path}: {e}")
        return set()

def get_common_chinese_chars():
    """获取常用汉字（常用字）"""
    common_chars = set()
    
    # 中文数字
    chinese_numbers = "零一二三四五六七八九十百千万亿"
    common_chars.update(chinese_numbers)
    
    # 常用量词和助词
    common_words = "个的了在是有人这上中大为和我国到他们不说子地也时要就说得着后自那看可起来对年生到地成地民可我这用出手行是过以方想天面前后间内外高长大小多少年月日时分秒点左右上下东西南北"
    common_chars.update(common_words)
    
    # 数学和学术术语
    math_terms = "数学函数方程极限导数微分积分变量常量定理公式计算求解证明已知则设令若使因此所以即为故等于大于小于约属于属包含组集合素实虚复正负奇偶质数位系整循商余模角弧度周期幅相切线法法向垂直平行斜率截距曲率凸凹拐间断跳跃可去无穷无极限连续可导阶高阶低次零点根极值最大最小值域值区间闭开半有界无界收敛发散单调增减性质特征齐次非齐通解特解初值边界条件参数变换代入换元部积法则链式乘积商比例反函互余补角弧度对数指数幂根号绝对值符号正弦余弦正切余切正割余割反三角双曲泰勒麦克劳林洛必达柯西罗尔拉格朗日黎曼牛顿莱布尼茨"
    common_chars.update(math_terms)
    
    return common_chars

def get_ascii_chars():
    """获取所有需要的 ASCII 字符"""
    chars = set()
    chars.update(string.ascii_letters)
    chars.update(string.digits)
    chars.update(string.punctuation)
    chars.add(' ')
    # 常用特殊字符
    chars.update('±×÷≈≠≤≥∞∑∏∫∂√∛∜°′″∠⊥∥∴∵∈∉⊂⊃∩∪∅→↔⇒⇔∀∃')
    return chars

def main():
    print("=" * 60)
    print("LXGW WenKai 字体精简脚本")
    print("=" * 60)
    
    # 获取项目根目录
    script_dir = Path(__file__).parent
    base_dir = script_dir.parent
    
    # 1. 提取字符
    print("\n步骤 1: 从 .typ 文件中提取字符...")
    all_chars = set()
    typ_files = list(base_dir.rglob('*.typ'))
    print(f"找到 {len(typ_files)} 个 .typ 文件")
    
    for typ_file in typ_files:
        chars = extract_characters_from_file(typ_file)
        all_chars.update(chars)
    
    print(f"从 .typ 文件中提取: {len(all_chars)} 个字符")
    
    # 2. 添加常用字符
    print("\n步骤 2: 添加常用字符...")
    common_chars = get_common_chinese_chars()
    ascii_chars = get_ascii_chars()
    all_chars.update(common_chars)
    all_chars.update(ascii_chars)
    
    print(f"总字符数: {len(all_chars)}")
    
    # 3. 保存字符集
    print("\n步骤 3: 保存字符集...")
    temp_dir = Path('/tmp')
    chars_file = temp_dir / 'font_chars.txt'
    sorted_chars = sorted(all_chars)
    with open(chars_file, 'w', encoding='utf-8') as f:
        f.write(''.join(sorted_chars))
    print(f"字符集已保存到: {chars_file}")
    
    # 4. 下载字体
    print("\n步骤 4: 下载 LXGW WenKai 字体...")
    font_url = "https://github.com/lxgw/LxgwWenKai/releases/download/v1.500/LXGWWenKai-Regular.ttf"
    input_font = temp_dir / 'LXGWWenKai-Regular.ttf'
    
    if not input_font.exists():
        print(f"正在从 {font_url} 下载...")
        result = subprocess.run(['wget', '-O', str(input_font), font_url], 
                              capture_output=True, text=True)
        if result.returncode != 0:
            print(f"下载失败: {result.stderr}")
            return
    else:
        print(f"字体文件已存在: {input_font}")
    
    # 5. 创建精简字体
    print("\n步骤 5: 创建精简字体...")
    output_font = base_dir / 'fonts' / 'LXGWWenKai-Subset.ttf'
    output_font.parent.mkdir(exist_ok=True)
    
    cmd = [
        'pyftsubset',
        str(input_font),
        f'--text-file={chars_file}',
        f'--output-file={output_font}'
    ]
    
    print(f"执行: {' '.join(cmd)}")
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    if result.returncode != 0:
        print(f"精简失败: {result.stderr}")
        return
    
    # 6. 显示结果
    print("\n" + "=" * 60)
    print("完成！")
    print("=" * 60)
    
    original_size = input_font.stat().st_size / (1024 * 1024)  # MB
    subset_size = output_font.stat().st_size / 1024  # KB
    reduction = (1 - (subset_size / 1024) / original_size) * 100
    
    print(f"原始字体大小: {original_size:.1f} MB")
    print(f"精简后大小: {subset_size:.1f} KB")
    print(f"压缩率: {reduction:.1f}%")
    print(f"输出文件: {output_font}")
    print("\n精简字体已保存到 fonts/ 目录")

if __name__ == '__main__':
    main()
