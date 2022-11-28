#!/bin/bash


if [[ -a /opt/homebrew/bin ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -a /home/linuxbrew/.linuxbrew/bin ]]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

brew install zsh \
	neovim \
	nvm \
	ripgrep \
	lazygit \
	ncdu \
	htop \
	starship \
	direnv \
	gum \
	stow \
	tree-sitter \
	zsh

mkdir -p ~/.nvm
