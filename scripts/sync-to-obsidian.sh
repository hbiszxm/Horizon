#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
TARGET="../AI行业与运维日报"
mkdir -p "$TARGET"
shopt -s nullglob

# Prefer GitHub Actions archived briefings after `git pull`.
files=(daily-briefings/horizon-*-zh.md)
if [ ${#files[@]} -eq 0 ]; then
  files=(data/summaries/horizon-*-zh.md)
fi

for f in "${files[@]}"; do
  cp "$f" "$TARGET/$(basename "$f")"
done

# Convert web-style anchors to Obsidian-native block links after copying.
# Web:      [标题](#item-1)
# Obsidian: [[#^item-1|标题]]  + detail block marker ^item-1
python3 - "$TARGET" <<'PY'
from pathlib import Path
import re
import sys

target = Path(sys.argv[1])
for p in target.glob('horizon-*-zh.md'):
    text = p.read_text(encoding='utf-8')

    def toc_repl(m: re.Match) -> str:
        n, title, tail = m.group(1), m.group(2), m.group(3)
        return f'{n}. [[#^item-{n}|{title}]] {tail}'

    text = re.sub(
        r'^(\d+)\. \[([^\]\n]+)\]\(#item-\1\) (⭐️ [^\n]+/10)$',
        toc_repl,
        text,
        flags=re.M,
    )

    def anchor_repl(m: re.Match) -> str:
        n = m.group(1)
        return f'<a id="item-{n}"></a>\n^item-{n}'

    text = re.sub(
        r'<a id="item-(\d+)"></a>(?!\n\^item-\1)',
        anchor_repl,
        text,
    )

    p.write_text(text, encoding='utf-8')
PY

printf 'Synced and Obsidian-linkified %d Horizon summaries to %s\n' "${#files[@]}" "$TARGET"
