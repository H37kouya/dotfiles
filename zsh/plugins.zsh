# powerlevel10k
zinit ice depth=1; zinit load romkatv/powerlevel10k

# fzf
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# 入力中のコマンドと一致するコマンドを履歴から探す
zinit load zsh-users/zsh-autosuggestions
zinit load zsh-users/zsh-history-substring-search

# Fast Syntax Highlighting
zinit light zdharma-continuum/fast-syntax-highlighting

# Ctrl+r でコマンド履歴を検索
zinit ice wait'2' lucid
zinit light zdharma-continuum/history-search-multi-word

# 移動強化系プラグイン
ENHANCD_COMPLETION_BEHAVIOR=list
zinit ice wait'2' lucid
zinit light b4b4r07/enhancd

# shの補完機能をさらに強化するプラグイン
zinit ice wait'2' lucid atload"zicompinit; zicdreplay" blockf for \
  zsh-users/zsh-completions

# color
zinit light chrissicool/zsh-256color

# Better completion for npm
zinit ice wait'2' lucid
zinit light "lukechilds/zsh-better-npm-completion"

# git open in browser
zinit ice wait'2' lucid
zinit light paulirish/git-open

# jq をインタラクティブに使える。JSONを標準出力に出すコマンドを入力した状態で `Alt+j` すると jq のクエリが書ける。
zinit ice wait'1' lucid
zinit light reegnz/jq-zsh-plugin

# wakatime (https://wakatime.com/terminal)
zinit light wbingli/zsh-wakatime
