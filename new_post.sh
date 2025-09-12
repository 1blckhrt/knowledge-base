#!/usr/bin/env bash
if [ -z "$1" ]; then
  echo "Usage: $0 \"Post Title\""
  exit 1
fi

TITLE="$1"
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
DATE=$(date +"%Y-%m-%dT%H:%M:%S")
BASE_DIR="content/posts"

CATEGORIES=$(find "$BASE_DIR" -mindepth 1 -type d | sed "s|$BASE_DIR/||" | fzf --multi --prompt="Select categories: ")

if [ -z "$CATEGORIES" ]; then
  echo "No category selected. Exiting."
  exit 1
fi

FORMATTED_CATEGORIES=$(echo "$CATEGORIES" | awk '{printf "\"%s\", ", $0}' | sed 's/, $//')

read -p "Enter comma-separated tags: " TAGS_INPUT

IFS=',' read -ra TAG_ARRAY <<< "$TAGS_INPUT"
FORMATTED_TAGS=$(printf '"%s", ' "${TAG_ARRAY[@]}" | sed 's/, $//')

TARGET_DIR="$BASE_DIR/$(echo "$CATEGORIES" | head -n1)"
mkdir -p "$TARGET_DIR"
FILE="$TARGET_DIR/$SLUG.md"

cat > "$FILE" <<EOL
---
title: "$TITLE"
date: $DATE
draft: false
categories: [$FORMATTED_CATEGORIES]
tags: [$FORMATTED_TAGS]
---

Write your content here...
EOL

echo "Created new post: $FILE"

if [ -n "$EDITOR" ]; then
  "$EDITOR" "$FILE"
else
  nano "$FILE"
fi
