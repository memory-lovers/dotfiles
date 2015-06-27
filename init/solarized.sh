#!/bin/bash

SOLARIZED_DIR='gnome-terminal-colors-solarized'
SOLARIZED_URL='https://github.com/Anthony25/gnome-terminal-colors-solarized.git'
SOLARIZED_PATH="${DOTPATH}/${SOLARIZED_DIR}"

echo "*** EXECUTE $0"

if [ -e ${SOLARIZED_PATH} ]; then
  echo "*** ALREADY INSTALED"
else
  mkdir ${SOLARIZED_PATH}
  git clone ${SOLARIZED_URL} ${SOLARIZED_PATH}
fi


