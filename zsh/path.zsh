# anyenv
eval "$(anyenv init -)"

# Each OS 
case ${OSTYPE} in
    # M1 Mac
    darwin20.0*)
        HOMEBREW_PATH=/opt/homebrew

        # Homebrew
        export PATH="$HOMEBREW_PATH/bin:$PATH"

        # PHP
        export PATH="$HOMEBREW_PATH/opt/php@7.4/bin:$PATH"
        export PATH="$HOMEBREW_PATH/opt/php@7.4/sbin:$PATH"
        ;;

    # WSL2
    linux-gnu*)
        HOMEBREW_PATH=/home/linuxbrew/.linuxbrew

        # Homebrew
        export PATH="$HOMEBREW_PATH/bin:$PATH"
        export PATH="$HOMEBREW_PATH/sbin:$PATH"
        ;;

    *)
        echo "想定外のOSです。 ${OSTYPE}"
esac
