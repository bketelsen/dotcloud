#!/bin/bash

if [[ -a /opt/homebrew/bin ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -a /home/linuxbrew/.linuxbrew/bin ]]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended --keep-zshrc
