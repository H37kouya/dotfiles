#!/bin/bash

SCRIPT_DIR=$HOME/dotfiles

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade

# macのとき
if [ "$(uname)" == "Darwin" ]; then
    echo "brew tap"
    cat $SCRIPT_DIR/pkg/brew_tap.txt | xargs -n1 brew tap

    echo "brew install cask"
    cat $SCRIPT_DIR/pkg/cask.txt | xargs brew install --cask
fi

echo "brew install formula"
cat $SCRIPT_DIR/pkg/brew.txt | xargs brew install || true

echo "vscode extensions install"
cat $SCRIPT_DIR/pkg/vscode_extensions.txt | xargs -I {} code --install-extension {} --force

echo "brew cleanup"
brew cleanup

echo "brew installed"