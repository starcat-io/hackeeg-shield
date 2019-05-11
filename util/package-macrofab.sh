#!/bin/bash

DATE=`date +'%Y-%m-%d-%H%M'`
DIR="$1"
BOARD="hackeeg-shield"
ARCHIVE_DIR="$BOARD-$DATE"
rm -rf "$ARCHIVE_DIR"
mkdir "$ARCHIVE_DIR"
cp "$BOARD".* "$ARCHIVE_DIR"
zip -r "$ARCHIVE_DIR.zip" "$ARCHIVE_DIR"

