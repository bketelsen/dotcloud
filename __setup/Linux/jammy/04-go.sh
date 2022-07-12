#!/bin/bash

version=1.18.3

# get it
wget https://go.dev/dl/go${version}.linux-amd64.tar.gz

# install it
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go${version}.linux-amd64.tar.gz

# delete it
rm go${version}.linux-amd64.tar.gz


# temporary path mods
export GOPATH=$HOME
export PATH=$PATH:/usr/local/go/bin

# install other stuff
go install github.com/jesseduffield/lazygit@latest
