#!/bin/sh

sudo apt update
sudo apt install zsh
sudo apt install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp eegitconfig ~/.eegitconfig
cp vimrc ~/.vimrc
cp zshrc ~/.zshrc
