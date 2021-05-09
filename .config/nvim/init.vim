let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

let g:python3_host_prog = $HOME . '/.pyenv/versions/neovim3/bin/python'

" 行番号を表示
set number
" TrueColorで表示する設定
set termguicolors