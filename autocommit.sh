#!/bin/bash

cd /home/biqu/printer_data/config || exit 1

git add .

if git diff --cached --quiet; then
    echo "No config changes to backup."
    exit 0
fi

git commit -m "Config backup $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
