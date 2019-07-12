#!/bin/bash

echo "*** EXECUTE $0"

# for editor
git config --global core.editor vim
# for color
git config --global color.ui auto


## for alias
git config --global alias.ci 'commit'
git config --global alias.st 'status'
git config --global alias.di 'diff'
git config --global alias.b 'branch'
git config --global alias.pu 'push'
git config --global alias.pl 'pull'
git config --global alias.co 'checkout'
git config --global alias.cl 'clone'
git config --global alias.clr 'clone --recursive'
