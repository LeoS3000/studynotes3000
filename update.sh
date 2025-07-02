#!/bin/bash
SRC_FOLDER="/Users/leostrietzel/Vaults/Leo's vault/Einführung in die KI"
DST_FOLDER="/Users/leostrietzel/Vaults/quartz/content"

if [ ! -d "$SRC_FOLDER" ]; then
  echo "Error: Source folder does not exist."
  exit 1
fi

# Check if the destination folder exists
if [ -d "$DST_FOLDER" ]; then
  echo "Destination will be overwritten."
fi

# Copy the folder
cp -r "$SRC_FOLDER" "$DST_FOLDER"

echo "Folder copied successfully."

echo "updating quartz content"
npx quartz sync