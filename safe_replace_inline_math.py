#!/usr/bin/env python3
import argparse
import re
import shutil
from pathlib import Path


PATTERN = re.compile(r"\[\$([^\$\n]*?)\$\]")


def transform(content: str) -> str:
    # Preserve inline math: [$...$] -> [ $...$ ]
    return PATTERN.sub(lambda m: f"[ ${m.group(1)}$ ]", content)


def process_file(path: Path, dry_run: bool, make_backup: bool) -> bool:
    original = path.read_text(encoding="utf-8")
    updated = transform(original)
    if updated == original:
        return False
    if dry_run:
        return True
    if make_backup:
        backup_path = path.with_suffix(path.suffix + ".bak")
        if not backup_path.exists():
            shutil.copy2(path, backup_path)
    path.write_text(updated, encoding="utf-8")
    return True


def main():
    parser = argparse.ArgumentParser(
        description="Safely replace [$...$] -> [...] in .typ files")
    parser.add_argument("root", nargs="?", default=".",
                        help="Root directory to scan")
    parser.add_argument("--dry-run", action="store_true",
                        help="Do not write changes, only report")
    parser.add_argument("--no-backup", action="store_true",
                        help="Do not create .bak backups when writing")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    changed = 0
    for file in root.rglob("*.typ"):
        try:
            if process_file(file, dry_run=args.dry_run, make_backup=not args.no_backup):
                changed += 1
        except Exception as exc:
            print(f"Error processing {file}: {exc}")
    mode = "would update" if args.dry_run else "updated"
    print(f"{mode} {changed} file(s)")


if __name__ == "__main__":
    main()
