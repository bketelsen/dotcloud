#!/usr/bin/env bash

# make sure we have pulled in and updated any submodules
git submodule init
git submodule update

# what directories should be installable by all users including the root user
base=(
    zsh
    bash
)

# folders that should, or only need to be installed for a local user
useronly=(
    git
)

if ! command -v lsb_release &> /dev/null
then
    flavor=""
fi

flavor=`lsb_release -c -s`
os=`uname`

if [[ ! $(cat /proc/1/sched | head -n 1 | grep init) ]]; then {
    echo Skipping installations, running in docker
} else {
    echo ""
    echo "Running install scripts for: ${os}-${flavor}"
    # https://ostechnix.com/how-to-run-all-scripts-in-a-directory-in-linux
    run-parts --regex '.*.sh$' __setup/${os}/${flavor}
} fi


# run the stow command for the passed in directory ($2) in location $1
stowit() {
    usr=$1
    app=$2
    # -v verbose
    # -R recursive
    # -t target
    stow -v -R -t ${usr} ${app}
}

sudo apt update && sudo apt install -y stow


echo ""
echo "Stowing apps for user: ${whoami}"

# install apps available to local users and root
for app in ${base[@]}; do
    find ${app} -maxdepth 1 -type f | sed 's!.*/!!' | xargs -I % sh -c 'rm -rf ~/%'

    stowit "${HOME}" $app 
done

# install only user space folders
for app in ${useronly[@]}; do
    if [[ ! "$(whoami)" = *"root"* ]]; then
        stowit "${HOME}" $app 
    fi
done

echo ""
echo "##### ALL DONE"
