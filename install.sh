#!/bin/bash

pwd=`pwd`

for i in `find ${pwd} -mindepth 1 | grep -v .git | grep -v "install.sh"`; do
  file=`basename ${i}`
  if [ -f ${HOME}/${file} ]; then
    mv ${HOME}/${file} ${HOME}/${file}.orig
  fi
  
  ln -sf ${i} ${HOME}
done


