# tmux
alias tsw="tmux split-window"
alias tls="tmux list-sessions"
alias tks="tmux kill-server"
alias tall-on="tmux set-window-option synchronize-panes on"
alias tall-off="tmux set-window-option synchronize-panes off"
alias tsource="tmux source ~/.tmux.conf"
alias tcase="$SCRIPT_DIR/bin/tmux.sh"

# Git
alias git-branch-delete="git branch --merged|egrep -v '\*|develop|master|main'|xargs git branch -d"

# Docker
alias dc="docker-compose"
alias dc-all-remove="docker ps -aq | xargs docker rm"

# Directories
alias dotfiles="cd $DOTFILES"

# Common
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# PHP
# alias composer="php -d memory_limit=-1 /opt/homebrew/bin/composer"

# vim
alias vim='nvim'

# bat
if builtin command -v bat > /dev/null; then
    # cat を bat に置き換える
    alias cat="bat"
fi

# exa
if builtin command -v exa > /dev/null; then
    # ls を exa に置き換える
    alias ls="exa"
    alias ls-tree="exa --tree"
fi
