#!/bin/bash

if [[ -a /opt/homebrew/bin ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ -a /home/linuxbrew/.linuxbrew/bin ]]; then
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi


git clone https://github.com/ianthehenry/sd.git ~/.oh-my-zsh/custom/plugins/sd
