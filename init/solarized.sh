#!/bin/bash

OS=`uname -o`

if [ ${OS} == 'Cygwin' ]; then
  SOLARIZED_URL='https://github.com/mavnn/mintty-colors-solarized.git'
else
  SOLARIZED_URL='https://github.com/Anthony25/gnome-terminal-colors-solarized.git'
fi

SOLARIZED_DIR='gnome-terminal-colors-solarized'
SOLARIZED_PATH="${DOTPATH}/${SOLARIZED_DIR}"

echo "*** EXECUTE $0"

if [ -e ${SOLARIZED_PATH} ]; then
  echo "*** ALREADY INSTALED"
else
  mkdir ${SOLARIZED_PATH}
  git clone ${SOLARIZED_URL} ${SOLARIZED_PATH}
fi


