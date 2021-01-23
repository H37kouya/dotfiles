#!/bin/bash

casks=(
    discord
    slack
    spotify
)

echo "brew casks"
for cask in "${casks[@]}"; do
    brew install --cask $cask
done
