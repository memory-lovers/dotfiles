#!/bin/bash
echo "*** EXECUTE $0"

FILES=`ls $DOTPATH/init/*.sh | grep -v 'init.sh'`

for i in $FILES; do
    bash $i
done
