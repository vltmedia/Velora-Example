#!/bin/bash

SRC="$1"
APPNAME="$2"

# Path to the user's Desktop (macOS)
DESKTOP="$HOME/Desktop"
OUTPUTDIR="$DESKTOP/$APPNAME"
if [ ! -d "$OUTPUTDIR" ]; then
	mkdir -p "$OUTPUTDIR"
fi

# Write tag.txt to output directory
echo "Tag changes to Velora package.json" > "$OUTPUTDIR/tag.txt"