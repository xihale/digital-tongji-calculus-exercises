#!/usr/bin/env python3
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parent
RES = ROOT / "res.typ"


def extract_section(res_text: str, section_title: str) -> str | None:
    # Find start of exact section marker
    pattern = re.compile(rf"^#section\[{re.escape(section_title)}\]\s*$", re.M)
    m = pattern.search(res_text)
    if not m:
        return None
    start = m.start()
    # Find end: next '#section[' or '#chapter[' after start
    tail = res_text[m.end():]
    end_rel = None
    for end_match in re.finditer(r"^#section\[|^#chapter\[", tail, re.M):
        end_rel = end_match.start()
        break
    if end_rel is None:
        end = len(res_text)
    else:
        end = m.end() + end_rel
    return res_text[start:end].rstrip() + "\n"


def restore_file(file_path: Path, res_text: str) -> bool:
    content = file_path.read_text(encoding="utf-8")
    if "[\\1]" not in content:
        return False
    section_title = file_path.stem
    section_block = extract_section(res_text, section_title)
    if not section_block:
        # If not a section match, skip
        return False
    # Split file at first occurrence of a '#section[' line to preserve header/imports
    split_match = re.search(r"^#section\[", content, re.M)
    if not split_match:
        # No section header in file: overwrite entirely with section content
        new_content = section_block
    else:
        header = content[: split_match.start()]
        new_content = header + section_block
    file_path.write_text(new_content, encoding="utf-8")
    return True


def main():
    res_text = RES.read_text(encoding="utf-8")
    # Previously detected affected files
    affected = [
        "第一章 函数与极限/第一节 映射与函数.typ",
        "第一章 函数与极限/第二节 数列的极限.typ",
        "第一章 函数与极限/第三节 函数的极限.typ",
        "第一章 函数与极限/第五节 极限运算法则.typ",
        "第一章 函数与极限/第九节 连续函数的运算与初等函数的连续性.typ",
        "第二章 导数与微分/第一节 导数的概念.typ",
        "第二章 导数与微分/第三节 高阶导数.typ",
        "第二章 导数与微分/第四节 隐函数及由参数方程所确定的函数的导数 相关变化率.typ",
        "第二章 导数与微分/第五节 函数的微分.typ",
        "第二章 导数与微分/总习题二.typ",
        "第七章 微分方程/第三节 齐次方程.typ",
    ]
    changed = 0
    for rel in affected:
        path = ROOT / rel
        if path.exists():
            try:
                if restore_file(path, res_text):
                    changed += 1
            except Exception as e:
                print(f"Error restoring {path}: {e}")
    print(f"Restored {changed} file(s) from res.typ")


if __name__ == "__main__":
    main()
