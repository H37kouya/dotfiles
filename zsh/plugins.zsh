# powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# fzf
zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# 入力中のコマンドと一致するコマンドを履歴から探す
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search

# Fast Syntax Highlighting
zinit light zdharma/fast-syntax-highlighting

# Ctrl+r でコマンド履歴を検索
zinit ice wait'2' lucid
zinit light zdharma/history-search-multi-word

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

# exa lsに色をつける
zinit ice as"program" from"gh-r" mv"exa* -> exa"
zinit light ogham/exa

# batコマンドの追加 catにシンタックスハイライトをする
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# ripgrep
zinit ice as"program" from"gh-r" mv"ripgrep* -> rg" pick"rg/rg"
zinit light BurntSushi/ripgrep

# fd
zinit ice as"program" from"gh-r" mv"fd* -> fd" pick"fd/fd"
zinit light sharkdp/fd

# wakatime (https://wakatime.com/terminal)
zinit light wbingli/zsh-wakatime
