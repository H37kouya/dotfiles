# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"

# anyenv
eval "$(anyenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Each OS
case ${OSTYPE} in
    # M1 Mac
    darwin20.0*)
        HOMEBREW_PATH=/opt/homebrew

        # Homebrew
        export PATH="$HOMEBREW_PATH/bin:$PATH"
        export PATH="$HOMEBREW_PATH/sbin:$PATH"

        # PHP
        export PATH="$HOMEBREW_PATH/opt/php@7.4/bin:$PATH"
        export PATH="$HOMEBREW_PATH/opt/php@7.4/sbin:$PATH"

        # Rust
        export PATH="$HOME/.cargo/bin:$PATH"

        # Go
        export GOPATH=$HOME/go
        export PATH=$GOPATH/bin:$PATH

        # Python
        export PATH="$HOMEBREW_PATH/Caskroom/miniforge/base/envs/lib-python-study/bin:$PATH"

        # GCC
        # alias gcc="$HOMEBREW_PATH/opt/gcc/bin/gcc-11"
        # export CC=gcc
        # export CXX=gcc
        ;;

    # WSL2
    linux-gnu*)
        HOMEBREW_PATH=/home/linuxbrew/.linuxbrew

        # Homebrew
        export PATH="$HOMEBREW_PATH/bin:$PATH"
        export PATH="$HOMEBREW_PATH/sbin:$PATH"

        # Go
        export GOPATH=$HOME/go;
        export PATH=$PATH:$GOPATH/bin;
        ;;

    *)
        echo "想定外のOSです。 ${OSTYPE}"
esac
