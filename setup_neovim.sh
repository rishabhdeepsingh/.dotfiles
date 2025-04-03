#!/bin/bash
cd $HOME/softwares

sudo rm -rf $HOME/softwares/neovim/

VERSION=nvim-linux-x86_64

wget https://github.com/neovim/neovim/releases/latest/download/$VERSION.tar.gz
tar xvfz $VERSION.tar.gz
sudo mv $VERSION $HOME/softwares/neovim/

rm $VERSION.tar.gz

cd ~/.dotfiles
