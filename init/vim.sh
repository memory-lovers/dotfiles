#!/bin/bash

DOTVIM="${DOTPATH}/.vim"
VUNDLE="${DOTVIM}/vundle"
URL="https://github.com/gmarik/Vundle.vim"

if [ ! -e ${VUNDLE} ]; then
  test -e ${DOTVIM} || mkdir ${DOTVIM}
  mkdir ${VUNDLE}
  git clone ${URL} ${VUNDLE}
fi
