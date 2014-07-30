#!/bin/bash

pwd=`pwd`

dotfiles='
.bash_aliases
.bashrc
.vimrc
.vim
'
dirs='
gnome-terminal-colors-solarized
'

for file in ${dotfiles}; do
  if [ -f ${HOME}/${file} ]; then
    mv ${HOME}/${file} ${HOME}/${file}.orig
  fi
  ln -sf ${pwd}/${file} ${HOME}
done

for dir in ${dirs}; do
  ln -sf ${pwd}/${dir} /opt/
done
