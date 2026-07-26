#!/bin/sh
# Copy the current page out of the working copy and publish it.
set -e
cd "$(dirname "$0")"
cp /Users/royinwang/Desktop/MACB/landing/index.html ./index.html
cp /Users/royinwang/Desktop/MACB/landing/og.jpg ./og.jpg 2>/dev/null || true
git add -A
git commit -m "${1:-update landing page}" || { echo "nothing to publish"; exit 0; }
git push
echo "pushed - live in ~1 min at https://ryrxrrr.github.io/AOS/"
