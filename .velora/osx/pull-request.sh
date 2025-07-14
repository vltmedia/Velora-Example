#!/bin/bash

SRC="$1"
APPNAME="$2"

# Path to the user's Desktop (macOS)
DESKTOP="$HOME/Desktop"
OUTPUTDIR="$DESKTOP/$APPNAME"
if [ ! -d "$OUTPUTDIR" ]; then
	mkdir -p "$OUTPUTDIR"
fi

# Write pullrequest.txt to output directory
echo "Pull Request changes to Velora package.json" > "$OUTPUTDIR/pullrequest.txt"