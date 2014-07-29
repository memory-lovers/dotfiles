set number " ライン番号を表示
set hlsearch " 検索結果をハイライト
set list
set listchars=tab:>-,trail:<
set nowrap " 折り返し表示しない
set laststatus=2 " ステータス行の表示
set wrapscan " 一番下まで検索したら最初の検索結果に戻る
set mouse=nvc
set ttymouse=xterm2
syntax enable

" 行頭、行末への移動をシェルと同じに
map <C-a> <Home>
map <C-e> <End>

" vundle
set nocompatible
filetype off
set rtp+=~/.vim/vundle
call vundle#rc()

" vim2hs
Bundle "dag/vim2hs"
let g:haskell_conceal_wide = 1
" disable all conceals, including the simple ones like
" lambda and composition
let g:haskell_conceal = 0

" disable concealing of "enumerations": commatized lists like
" deriving clauses and LANGUAGE pragmas,
" otherwise collapsed into a single ellipsis
let g:haskell_conceal_enumerations = 0

let g:haskell_quasi         = 0
let g:haskell_interpolation = 0
let g:haskell_regex         = 0
let g:haskell_jmacro        = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 0
let g:haskell_json          = 0
let g:haskell_xml           = 0
let g:haskell_hsp           = 0
let g:haskell_multiline_strings = 1

" vimproc
Bundle "Shougo/vimproc"
" ghcmod-vim
Bundle "eagletmt/ghcmod-vim"
Bundle "Shougo/vimshell.vim"
Bundle "Shougo/unite.vim"

"
Bundle "pbrisbin/html-template-syntax"

" vim-colors-solarized
" カラースキームSolarized: 私家版
" <<http://raven.air-nifty.com/night/2011/08/solarized-a801.html>>
Bundle 'altercation/vim-colors-solarized'

call togglebg#map("<f5>")
set t_Co=16
"let g:solarized_termcolors=16
"let g:solarized_termtrans=1
"let g:solarized_degrade=0
"let g:solarized_bold=1
"let g:solarized_underline=1
"let g:solarized_italic=1
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
set background=dark
colorschem solarized

"
filetype plugin on

" Quickfix
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

