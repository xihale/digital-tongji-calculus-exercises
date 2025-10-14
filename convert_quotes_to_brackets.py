#!/usr/bin/env python3
import re
from pathlib import Path


# Match double-quoted strings without newlines: "..."
QUOTE_RE = re.compile(r'"([^"\n]*?)"')


def convert(text: str) -> str:
    # Replace "..." with [...]
    return QUOTE_RE.sub(lambda m: f"[{m.group(1)}]", text)


def main():
    root = Path(__file__).resolve().parent
    changed = 0
    for f in root.rglob("*.typ"):
        original = f.read_text(encoding="utf-8")
        updated = convert(original)
        if updated != original:
            f.write_text(updated, encoding="utf-8")
            changed += 1
    print(f"Converted quoted strings in {changed} file(s)")


if __name__ == "__main__":
    main()
