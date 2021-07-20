#!/bin/bash

###
# Installing packages
###

printf "\n🚀 Installing packages\n"
apt update
apt install -y neovim git-flow curl zsh

###
# Install oh my zsh
###

if [ -d "${HOME}/.oh-my-zsh" ]; then
	printf "oh-my-zsh is already installed\n"
else
	printf "\n🚀 Installing oh-my-zsh\n"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

###
# Installing dotfiles
###

ln -sf "$(pwd)/zsh/aliases.zsh" "${HOME}/.oh-my-zsh/custom/aliases.zsh"
ln -sf "$(pwd)/zsh/my.zsh-theme" "${HOME}/.oh-my-zsh/themes/my.zsh-theme"
ln -sf "$(pwd)/zsh/.zshrc" "${HOME}/.zshrc"


###
# Set zsh as default shell
###

chsh -s $(which zsh)
