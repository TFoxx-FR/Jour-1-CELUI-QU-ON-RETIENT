#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./push_that.sh <commit-message>"
    exit 1
fi

git add .
git commit -m "$1"
git push origin main

if [ $? -eq 0 ]; then
    echo "Push successful ✅"
else
    echo "Something went wrong with git push ❌"
fi
