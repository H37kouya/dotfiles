#!/bin/bash
SCRIPT_DIR=$HOME/dotfiles

# 配置したい設定ファイル
dotfiles=(.zshrc)

# .zshrc シンボリックリンクをホームディレクトリ直下に作成する
for file in "${dotfiles[@]}"; do
    ln -svf ~/$file $SCRIPT_DIR
done