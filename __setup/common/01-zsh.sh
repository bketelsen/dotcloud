#!/bin/bash

# append brew's zsh to the allowed shells
echo "/home/linuxbrew/.linuxbrew/bin/zsh" | sudo tee -a /etc/shells

sudo chsh -s /home/linuxbrew/.linuxbrew/bin/zsh bjk
