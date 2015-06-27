" Settings
set nocompatible
filetype off
set rtp+=${HOME}/.vim/vundle
call vundle#rc()

"
set rtp+=${HOME}/.vim
runtime! conf.d/*.vim
