"{{{ primitive
set number                    "ライン番号を表示
set hlsearch                  "検索結果をハイライト
set nowrap                    "折り返し表示しない
set laststatus=2              "ステータス行の表示
" [ファイルフォーマット][エンコーディング][改行タイプ] 行数, 列数／総列数
set statusline=%F%m%r%h%w\%=[FILETYPE=%Y][ENC=%{&fenc}][%{&ff}]%=%c,\%l/%L
set wrapscan                  "一番下まで検索したら最初の検索結果に戻る
set mouse=nvc                 "マウス操作の有効化
set ttymouse=xterm2
" set smartindent             "自動インデントの有効
set nosmartindent             "自動インデントの無効
" set autoindent              "自動インデントの有効
set noautoindent              "自動インデントの無効
set clipboard=unnamedplus     "enable clipboard
set list                      ""空白の表示
set listchars=tab:>-,trail:<  "tabを'>-', 末尾の空白を'<'で表示
set cursorline                "カーソルのある行をハイライトする
set showmatch                 " 括弧入力時の対応する括弧を表示
set matchtime=2               " 対応する括弧の表示時間を2にする
" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
set noautoindent              " オートインデントを無効にする
set expandtab                 " タブの代わりに空白を使う
set hidden                    " バッファを切替えてもundoの効力を失わない
set ambiwidth=double          " □とか○の文字があってもカーソル位置がずれないようにする
set formatoptions+=mM         "整形オプションにマルチバイト系を追加

syntax enable                 " シンタックスハイライトを有効にする
syntax on                     " シンタックスハイライトを有効にする
filetype indent on            " ファイルタイプによるインデントを行う
filetype plugin on            " ファイルタイプによるプラグインを使う

highlight clear CursorLine
highlight CursorLine gui=underline

"" 行頭、行末への移動をシェルと同じに
map <C-a> <Home>
map <C-e> <End>

" .vimrc再読み込みのショートカット
cnoremap rr source ~/.vimrc

"}}}

"{{{ vimproc
Bundle "Shougo/vimproc"
Bundle "Shougo/vimshell.vim"
Bundle "Shougo/unite.vim"
"}}}


"{{{ im_control for ime
Bundle "fuenor/im_control.vim"
"}}}

"{{{ The NERD Tree
Bundle "scrooloose/nerdtree"

" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
" Ctl+e is Open/Close NERD Tree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"}}}

" Quickfix
au QuickfixCmdPost make,grep,grepadd,vimgrep copen

"" filetype
au BufNewFile,BufRead *.html set expandtab tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.css set expandtab tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.scss set expandtab tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.js set expandtab tabstop=4 shiftwidth=4

" マッピングに関するMEMO
" noreがつくものとつかないものの違い（mapとnoremapとか）
" noreがつかないものを使うと、キーの再割当てが発生する
" -> mapはキーシーケンスを展開した後、さらに別のマップを適用しようとする
" -> noremapは一度だけ展開する
" (例)
" map {A} {X}
" map {B} {A}
" 上のようにマッピングされていた場合、Bを押すとAが実行され、さらにAに割り当てられたXが実行される
" noremapだとマッピングを1度しか展開しない  混乱を避けるためにnore系を利用するのが無難かも
" noremap  : ノーマルモード＋ビジュアルモード
" noremap! : コマンドラインモード＋インサートモード
" nnoremap : ノーマルモード限定
" vnoremap : ビジュアルモード（選択モード）限定
" cnoremap : コマンドラインモード限定
" inoremap : 挿入モード限定
