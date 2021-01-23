# tmux
alias tsw="tmux split-window"
alias tls="tmux list-sessions"
alias tks="tmux kill-server"
alias tsource="tmux source ~/.tmux.conf"
alias tcase="$SCRIPT_DIR/bin/tmux.sh"

# Docker
alias dc="docker-compose"

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