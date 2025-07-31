#!/usr/bin/env bash

# folder temp
TMP_DIR=$(mktemp -d)
DEST="rules-phoenix"

echo "🚀 Clone Phoenix repo temp..."
git clone --depth=1 https://github.com/phoenixframework/phoenix.git "$TMP_DIR"

# create destination folder
echo "📂 Creating destination folder '$DEST'..."
mkdir -p "$DEST"

echo "📦 Create rules file..."
touch "$DEST/rules.md"

echo "📁 Copying 'guides/' folder..."
cp -R "$TMP_DIR/guides" "$DEST"

echo "🧹 Cleaning up temporary files..."
rm -rf "$TMP_DIR"

echo "✅ Done! Files saved in ./$DEST"