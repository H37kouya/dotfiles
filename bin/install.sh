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

formulas=(
    anyenv
    asciinema
    bat
    ctop
    composer
    exa
    ffmpeg
    fd
    gh
    git
    gitui
    jrnl
    navi
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
    thefuck
    tldr
    tmux
    tmuxinator
    tree
)

echo "brew tap"
# brew tap thirdparty
brew tap homebrew/cask-fonts

echo "brew install formula"
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

echo ${OSTYPE}
# Each OS 
case ${OSTYPE} in
    darwin20*)
        casks=(
            discord
            google-chrome
            postman
            jetbrains-toolbox
            slack
            spotify
            font-hackgen
            font-hackgen-nerd
        )

        echo "brew casks"
        for cask in "${casks[@]}"; do
            brew install --cask $cask
        done
    ;;

    *) ;;
esac

brew cleanup

echo "brew installed"