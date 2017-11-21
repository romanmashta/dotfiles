#!/usr/bin/env bash
#sh -c "$(curl --no-sessionid -fsSL https://raw.githubusercontent.com/romanmashta/dotfiles/master/bootstrap.sh)"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

cd;
mkdir -p ~/Sandbox
cd ~/Sandbox
git clone https://github.com/romanmashta/dotfiles.git

cd ~/Sandbox/dotfiles

./brew.sh
./cask.sh
./dock.sh
