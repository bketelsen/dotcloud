#!/usr/bin/bash

# get it
wget https://github.com/neovim/neovim/releases/download/v0.8.1/nvim-linux64.deb

# install it
sudo dpkg -i nvim-linux64.deb

# delete it
rm nvim-linux64.deb

rm -rf ~/.config/nvim

git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
