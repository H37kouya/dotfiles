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

# Common ls
case ${OSTYPE} in
    darwin*)
        export LSCOLORS=xbfxcxdxbxegedabagacad
        alias ls='ls -G'
        ;;
    *)
        eval `dircolors ~/.colorrc`
        alias ls='ls --color=auto'
        ;;
esac

# Common
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# OS 別の設定
case ${OSTYPE} in
    darwin20.0*)
        #Mac用の設定
        export CLICOLOR=1
        alias ls='ls -G -F'
        ;;
    linux*)
        #Linux用の設定
        alias ls='ls -F --color=auto'
        ;;
    *)
        echo "想定外のOSです。 ${OSTYPE}"
esac