# memory_loverz/dotfiles

dotfiles inclues below

- for Bash/Screen
 - .bashrc
 - .bash_alias
 - .bash_funcs
 - .screenrc
- for vim
 - .vimrc
 - .vim
 - .vim/conf.d/
   - primitive.vim
   - colorscheme.vim
   - haskell.vim
   - html.vim
   - markdown.vim

## Installation

```bash
$ ./install.sh
```

## Requirement

- Ubuntu Only

## Using Libraries

### for Bash
- [Anthony25/gnome-terminal-colors-solarized.](https://github.com/Anthony25/gnome-terminal-colors-solarized.git)
 - using solarized color scheme on gnome-terminal

### for Vim

#### .vimrc
- [gmarik/Vundle.vim](https://github.com/gmarik/Vundle.vim.git)
 - Vim Plugin Manager

#### primitive.vim
- [Shougo/vimproc](https://github.com/Shougo/vimproc.git)
- [Shougo/vimshell.vim](https://github.com/Shougo/vimshell.vim.git)
- [Shougo/unite.vim](https://github.com/Shougo/unite.vim.git)
- [fuenor/im_control.vim](https://github.com/fuenor/im_control.vim.git)
 - im_control for ime
- (unused) [Shougo/neocomplete.vim](https://github.com/Shougo/neocomplete.vim)
 - コード入力補完、補助
- [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree/)
 - Filier: refs[Vimプラグイン「NERDTree」設定・コマンド備忘録](http://kontany.net/blog/?p=112)



#### colorscheme.vim
- [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
 - using solarized color scheme on vim. ref:[カラースキームSolarized: 私家版](http://raven.air-nifty.com/night/2011/08/solarized-a801.html)

#### haskell.vim
- [dag/vim2hs](https://github.com/dag/vim2hs.git)
- [eagletmt/ghcmod-vim](https://github.com/eagletmt/ghcmod-vim.git)

#### markdown.vim
- [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown.git)
 - Markdown Syntax highlighting
- [kannokanno/previm](https://github.com/kannokanno/previm.git)
 - preview from vim
- [tyru/open-browser.vim](https://github.com/tyru/open-browser.vim.git)
 - preview using browser

#### html.vim
##### common support
- [mattn/emmet-vim](https://github.com/mattn/emmet-vim.git)
 - html/CSS入力補助プラグイン。example vimrc: [alpaca-tc/vimrc](https://gist.github.com/alpaca-tc/6879605)
- [tpope/vim-surround](https://github.com/tpope/vim-surround.git)
 - vimのテキストオブジェクトを拡張するプラグイン
- [mattn/webapi-vim](https://github.com/mattn/webapi-vim.git)
 - URLを開いたり、ググったり出来る。example vimrc: [qickstarter/.vimrc](https://gist.github.com/qickstarter/3668363)

##### html support
- [pbrisbin/html-template-syntax](https://github.com/pbrisbin/html-template-syntax.git)
- [taichouchou2/html5.vim](https://github.com/taichouchou2/html5.vim.git)
 - HTML5 Syntax highlighting

##### css support
- [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax.git)
 - CSS3 Syntax highlighting

##### javascript support
- [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript.git)
 - javascript Syntax highlighting

##### sass support
- (unused) [AtsushiM/sass-compile.vim](https://github.com/AtsushiM/sass-compile.vim.git)
- [cakebaker/scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim)
 - SCSS(Sassy CSS) Syntax highlighting

##### coffe script support
- [kchmck/vim-coffee-script](https://github.com/kchmck/vim-coffee-script.git)
 - coffee-script support

##### references
1. [vim使っているデザイナー/コーダーで、これ入れてないのはヤバっしょプラグインまとめ　8個 - Qiita](http://qiita.com/alpaca_taichou/items/056a4c42fe7a928973e6)
1. [HTML+CSS編集に便利なVimプラグイン - NAVER まとめ](http://matome.naver.jp/odai/2130348974487179401)



