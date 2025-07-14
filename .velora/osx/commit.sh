#!/bin/bash

SRC="$1"
APPNAME="$2"

# Path to the user's Desktop (macOS)
DESKTOP="$HOME/Desktop"
OUTPUTDIR="$DESKTOP/$APPNAME"
if [ ! -d "$OUTPUTDIR" ]; then
	mkdir -p "$OUTPUTDIR"
fi

# Write commit.txt to output directory
echo "Commit changes to Velora package.json" > "$OUTPUTDIR/commit.txt"