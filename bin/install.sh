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

echo "brew tap"
# brew tap thirdparty
brew tap homebrew/cask-fonts

echo "brew install formula"
brew install anyenv || brew upgrade anyenv
brew install asciinema || brew upgrade asciinema
brew install bat || brew upgrade bat
brew install cmake || brew upgrade cmake
brew install ctop || brew upgrade ctop
brew install composer || brew upgrade composer
brew install exa || brew upgrade exa
brew install ffmpeg || brew upgrade ffmpeg
brew install fd || brew upgrade fd
brew install gcc || brew upgrade gcc
brew install gh || brew upgrade gh
brew install git || brew upgrade git
brew install jrnl || brew upgrade jrnl
brew install navi || brew upgrade navi
brew install neofetch || brew upgrade neofetch
brew install nnn || brew upgrade nnn
brew install procs || brew upgrade procs
brew install poppler || brew upgrade poppler
brew install pstree || brew upgrade pstree
brew install python@3.9 || brew upgrade python@3.9
brew install sampler || brew upgrade sampler
brew install sd || brew upgrade sd
brew install sqlite || brew upgrade sqlite
brew install starship || brew upgrade starship
brew install thefuck || brew upgrade thefuck
brew install tldr || brew upgrade tldr
brew install tmux || brew upgrade tmux
brew install tmuxinator || brew upgrade tmuxinator
brew install tree || brew upgrade tree

echo ${OSTYPE}
# Each OS 
case ${OSTYPE} in
    darwin20* )
        brew install gitui || brew upgrade gitui
        brew install php@7.4 || brew upgrade php@7.4

        echo "brew casks"
        brew install --cask discord
        brew install --cask google-chrome
        brew install --cask postman
        brew install --cask jetbrains-toolbox
        brew install --cask slack
        brew install --cask spotify
        brew install --cask font-hackgen
        brew install --cask font-hackgen-nerd
        ;;
    linux-gnu* ) brew install zsh || brew upgrade zsh ;;

    *) echo ${OSTYPE} ;;
esac


echo "brew cleanup"
brew cleanup

echo "brew installed"