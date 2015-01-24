#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $(readlink -f $0 || echo $0));pwd -P) 
dotfiles='
.bash_aliases
.bash_funcs
.bashrc
.screenrc
.vim
.vimrc
'
dirs='
gnome-terminal-colors-solarized
'

for file in ${dotfiles}; do
  if [ -f ${HOME}/${file} ]; then
    mv ${HOME}/${file} ${HOME}/${file}.orig
  fi
  ln -sf ${SCRIPT_DIR}/${file} ${HOME}
done

for dir in ${dirs}; do
  ln -sf ${SCRIPT_DIR}/${dir} /opt/
done
