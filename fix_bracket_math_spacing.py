#!/usr/bin/env python3
from pathlib import Path


def fix_content(text: str) -> str:
    # Ensure a space after '[' when immediately followed by '$'
    text = text.replace("[$", "[ $")
    # Ensure a space before ']' when immediately preceded by '$'
    text = text.replace("$]", "$ ]")
    return text


def main():
    root = Path(__file__).resolve().parent
    changed = 0
    for f in root.rglob("*.typ"):
        original = f.read_text(encoding="utf-8")
        updated = fix_content(original)
        if updated != original:
            f.write_text(updated, encoding="utf-8")
            changed += 1
    print(f"Updated spacing in {changed} file(s)")


if __name__ == "__main__":
    main()
