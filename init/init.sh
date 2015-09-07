#!/bin/bash
echo "*** EXECUTE $0"

FILES=`ls $DOTPATH/init/*.sh | grep -v 'init.sh'`

pkgs='
cifs-utils
compizconfig-settings-manager
git
git-flow
ibus-mozcsudo
language-pack-ja
language-pack-ja-base
openssh-server
samba
screen
subversion
vim
vim-athena
vim-gnome
vim-gtk
xclip
'

# install packages
sudo apt-get install -y ${pkgs}

# setup
for i in $FILES; do
    bash $i
done
