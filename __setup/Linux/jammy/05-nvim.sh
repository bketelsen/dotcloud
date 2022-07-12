#!/usr/bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/
sudo ln -s /usr/local/bin/nvim.appimage /usr/local/bin/nvim


git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
