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

# Common
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# norminette
alias norminette="~/.norminette/norminette.rb"

# bat
if builtin command -v bat > /dev/null; then
    alias cat="bat"
fi

# exa
if builtin command -v exa > /dev/null; then
    alias ls="exa"
    alias ls-tree="exa --tree"
fi
