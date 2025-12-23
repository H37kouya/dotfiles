#!/bin/bash

# Update package lists from current system state
# Usage: ./bin/update.sh

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PKG_DIR="$SCRIPT_DIR/pkg"

echo "Updating package lists..."

# Update Homebrew tap list
echo "  -> Updating brew_tap.txt"
brew tap > "$PKG_DIR/brew_tap.txt"

# Update Homebrew formulae list (leaves only - top-level packages)
echo "  -> Updating brew.txt"
brew leaves > "$PKG_DIR/brew.txt"

# Update Homebrew cask list
echo "  -> Updating cask.txt"
brew list --cask > "$PKG_DIR/cask.txt"

# Update VSCode extensions list
if command -v code &> /dev/null; then
    echo "  -> Updating vscode_extensions.txt"
    code --list-extensions > "$PKG_DIR/vscode_extensions.txt"
else
    echo "  -> Skipping vscode_extensions.txt (code command not found)"
fi

echo "Done! Updated files in $PKG_DIR"
