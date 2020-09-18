#!/bin/bash

DIR="$1"
BOARD="$2"
if [ -z "$BOARD" ]; then
  BOARD="hackeeg-shield"
fi

DATE=`date +'%Y-%m-%d-%H%M'`
ARCHIVE_DIR="$BOARD-$DATE"
rm -rf "$ARCHIVE_DIR"
mkdir "$ARCHIVE_DIR"
cp "$BOARD".* "$ARCHIVE_DIR"
zip -r "$ARCHIVE_DIR.zip" "$ARCHIVE_DIR"

