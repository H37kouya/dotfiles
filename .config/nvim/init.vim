call plug#begin('~/.vim/plugged')
" vscode theme https://github.com/tomasiser/vim-code-dark
Plug 'tomasiser/vim-code-dark'
" ステータスバーを表示する
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" ファイルツリーを表示する
Plug 'lambdalisue/fern.vim'
" nerd フォント対応
Plug 'lambdalisue/nerdfont.vim'
" nerd フォントをファイルツリーに使う
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" ファイルアイコン https://github.com/ryanoasis/vim-devicons
Plug 'ryanoasis/vim-devicons'
" gitの差分を表示する
Plug 'airblade/vim-gitgutter'
" ファイル検索する
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" ファイル検索する
Plug 'junegunn/fzf.vim'
" かっこを rainbow にする
Plug 'luochen1990/rainbow'
" インデントを見やすくする
Plug 'Yggdroot/indentLine'
" 複数行をまとめてコメントアウトする
Plug 'tpope/vim-commentary'
" Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" editorconfig
Plug 'editorconfig/editorconfig-vim'
" emmet
Plug 'mattn/emmet-vim'
" 
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" GitHub copilot
Plug 'github/copilot.vim'
call plug#end()

""" tomasiser/vim-code-dark
colorscheme codedark

" エンコード
set encoding=UTF-8
" 行番号を表示
set number
" 反映時間を短くする(デフォルトは4000ms)
set updatetime=250
" 背景色
set background=dark
"改行時に自動でインデントする
set autoindent
" タブをスペースで扱う
set expandtab
" タブを4文字分に設定
set tabstop=4
" インデントを増やすときも減らすときもスペース4文字分の幅に
set shiftwidth=4

""" vim-airline/vim-airline
" タブラインを表示
let g:airline#extensions#tabline#enabled = 1

""" lambdalisue/fern.vim
" nerdfont をファイルツリーに使う
let g:fern#renderer = 'nerdfont'

"" git操作
" g]で前の変更箇所へ移動する
nnoremap g[ :GitGutterPrevHunk<CR>
" g[で次の変更箇所へ移動する
nnoremap g] :GitGutterNextHunk<CR>
" ghでdiffをハイライトする
nnoremap gh :GitGutterLineHighlightsToggle<CR>
" gpでカーソル行のdiffを表示する
nnoremap gp :GitGutterPreviewHunk<CR>
" 記号の色を変更する
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red

"" fzf.vim
" git管理されていれば:GFiles、そうでなければ:Filesを実行する
fun! FzfOmniFiles()
    let is_git = system('git status')
    if v:shell_error
        :Files
    else
        :GFiles
    endif
endfun

" <S-?>でプレビューを表示/非表示する
command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--exact --delimiter : --nth 3..'}, 'right:50%:hidden', '?'),
\ <bang>0)

" Yggdroot/indentLine
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_defaultColor = 'DarkSlateGray'
let g:indentLine_defaultSymbol = '│'
let g:indentLine_defaultSymbol_tab = '│'
let g:indentLine_defaultSymbol_space = '│'
let g:indentLine_defaultSymbol_eol = '│'
let g:indentLine_defaultSymbol_eol_tab = '│'
let g:indentLine_defaultSymbol_eol_space = '│'

" tagbar の設定
let g:tagbar_width = 30        " 初期設定はwidth=40なのでちょっと幅とりすぎ。

""" ショートカット
" ファイル検索
nnoremap <C-p> :call FzfOmniFiles()<CR>
" 文字列検索
nnoremap <C-g> :Rg<CR>
" frでカーソル位置の単語をファイル検索する
nnoremap fr vawy:Rg <C-R>"<CR>
" frで選択した単語をファイル検索する
xnoremap fr y:Rg <C-R>"<CR>
" Ctrl+bでファイルツリーを表示/非表示する
nnoremap <C-b> :Fern . -reveal=% -drawer -toggle -width=40<CR>
