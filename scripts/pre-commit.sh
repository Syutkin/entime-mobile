#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

unstaged_before=0
if ! git diff --name-only --quiet; then
  unstaged_before=1
fi

python3 - <<'PY'
import pathlib
import re
import sys

path = pathlib.Path("pubspec.yaml")
text = path.read_text()

match = re.search(r"^(version:\s*[^\s+]+\+)(\d+)[ \t]*$", text, flags=re.M)
if not match:
    print("pre-commit: could not find version line like 'version: x.y.z+N' in pubspec.yaml", file=sys.stderr)
    sys.exit(1)

prefix = match.group(1)
build = int(match.group(2)) + 1
new_text = re.sub(
    r"^(version:\s*[^\s+]+\+)(\d+)[ \t]*$",
    f"{prefix}{build}",
    text,
    flags=re.M,
    count=1,
)

path.write_text(new_text)
print(f"pre-commit: bumped pubspec.yaml to {prefix}+{build}")
PY

dart run build_runner build --delete-conflicting-outputs

if [ "$unstaged_before" -eq 1 ]; then
  echo "pre-commit: unstaged changes existed before hook; stage pubspec.yaml and generated files, then re-run commit." >&2
  exit 1
fi

git add pubspec.yaml
git add -u
