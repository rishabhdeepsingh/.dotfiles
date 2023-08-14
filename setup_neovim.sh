#!/bin/bash
cd $HOME/softwares

sudo rm -rf $HOME/softwares/neovim/

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz
tar xvfz nvim-linux64.tar.gz
sudo mv nvim-linux64 $HOME/softwares/neovim/

rm gnvim-linux64.tar.gz

cd ~/.dotfiles
