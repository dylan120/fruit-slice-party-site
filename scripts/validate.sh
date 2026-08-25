#!/bin/sh
set -eu

files="index.html privacy/index.html support/index.html"
for file in $files; do
  test -f "$file"
  grep -q 'dylan120liu@gmail.com' "$file"
  grep -q '© 2026 Dylan Liu' "$file"
  grep -qi 'Fruit Slice Party' "$file"
done

grep -q 'does not record or upload camera video' index.html
grep -q 'not recorded, saved, transmitted, or uploaded' privacy/index.html
grep -q 'no in-app purchases or subscriptions' privacy/index.html
grep -q 'no in-app purchases or subscriptions' support/index.html
grep -q 'iOS 17 or later' index.html
grep -q 'iOS 17 or later' support/index.html

if rg -n 'TODO|PLACEHOLDER|Motion Arcade|Big Screen|/Users/|/Volumes/|token|password|secret' \
  --glob '*.html' --glob '*.css' .; then
  echo '发现占位符、旧产品事实、本机路径或敏感词。' >&2
  exit 1
fi

echo 'Site validation passed.'
