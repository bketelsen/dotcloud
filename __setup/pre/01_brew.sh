#!/bin/bash 

# macs have curl installed so if it is missing
# it is ok to assume apt is available
if ! command -v curl &> /dev/null
then
    sudo apt update && sudo apt install -y curl git wget
fi


NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
