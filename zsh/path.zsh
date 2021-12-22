if [ -e "$HOME/.anyenv" ]
then
    export ANYENV_ROOT="$HOME/.anyenv"
    export PATH="$ANYENV_ROOT/bin:$PATH"
    if command -v anyenv 1>/dev/null 2>&1
    then
        eval "$(anyenv init -)"
    fi
fi


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
        # GOENV_DISABLE_GOPATH=1

        # Python
        export PATH="$HOMEBREW_PATH/Caskroom/miniforge/base/envs/lib-python-study/bin:$PATH"

        # GCC
        export CC=gcc
        export CXX=gcc

        # OpenBlas
        export OPENBLAS="$(brew --prefix openblas)/lib/"
        export OPENBLAS_NUM_THREADS=4

        # LLVM
        export LLVM_CONFIG="/opt/homebrew/Cellar/llvm@11/11.1.0_3/bin/llvm-config"
        # export LLVM_CONFIG=/usr/local/Cellar/llvm@9/9.0.1_2/bin/llvm-config
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
