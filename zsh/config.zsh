export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

# 補完機能を有効にする
autoload -Uz compinit && compinit

# 補完候補一覧でファイルの種別を識別マーク表示(ls -F の記号)
setopt list_types
# lsコマンドの補完候補にも色付き表示
zstyle ':completion:*:default' list-colors ${LS_COLORS}
# kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'

# History系
setopt share_history         # コマンド履歴ファイルを共有する
setopt append_history        # 履歴を追加 (毎回 .zsh_history を作るのではなく)
setopt inc_append_history    # 履歴をインクリメンタルに追加
setopt hist_ignore_all_dups  # 重複するコマンド行は古い方を削除
setopt hist_ignore_dups      # 直前と同じコマンドラインはヒストリに追加しない
setopt hist_no_store         # historyコマンドは履歴に登録しない
setopt hist_reduce_blanks    # 余分な空白は詰めて記録
zstyle ':completion:*:default' menu select

# 補完時、大文字と小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 何も入力されていないときの TAB で TAB が挿入されるのを防ぐ
zstyle ':completion:*' insert-tab false
