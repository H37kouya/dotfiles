export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

setopt share_history

# 補完時、大文字と小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 何も入力されていないときの TAB で TAB が挿入されるのを防ぐ
zstyle ':completion:*' insert-tab false