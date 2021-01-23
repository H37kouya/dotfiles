#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."
brew upgrade

formulas=(
    anyenv
    asciinema
    bat
    ctop
    composer
    dat
    exa
    ffmpeg
    fd
    font-hackgen
    font-hackgen-nerd
    gh
    git
    gitui
    jrnl
    mas
    navi
    neovim
    neofetch
    nnn
    procs
    poppler
    php@7.4
    pstree
    python@3.9
    sampler
    sd
    sqlite
    starship
    taskell
    thefuck
    tldr
    tmux
    tmuxinator
    tree
    yarn
)

echo "brew tap"
# brew tap thirdparty
brew tap homebrew/cask-fonts

echo "brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

# Each OS 
case ${OSTYPE} in
    darwin20.0*)
        sh ./brew_cask.sh
    ;;

    *) ;;
esac

brew cleanup

echo "brew installed"