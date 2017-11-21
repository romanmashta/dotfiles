#!/usr/bin/env bash
#sh -c "$(curl --no-sessionid -fsSL https://raw.githubusercontent.com/romanmashta/dotfiles/master/bootstrap.sh)"

#Ask for sudo upfront
sudo -v

#Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git

#Clone dotfiles
cd;
mkdir -p ~/Sandbox
cd ~/Sandbox
git clone https://github.com/romanmashta/dotfiles.git
cd ~/Sandbox/dotfiles

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/romanmashta/dotfiles/master/oh-my-zsh/install.sh)"
yes | cp ./oh-my-zsh/.zshrc ~/.zshrc

#Proceed with installs
./brew.sh
./cask.sh
./dock.sh

#Open iterm
open /Applications/iTerm.app