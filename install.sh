#!/bin/bash

function linkToHome() {
	echo "Linking $1 to $HOME/$1"
	sudo ln -sf $PWD/$1 $HOME/$1
}

function gitClone(){
	if [ ! -d "$2" ]; then
		echo "Cloning $1 to $2"
		git clone $1 $2
	else
    	echo "Skipping $1. Folder $2 exists."
	fi
}

gitClone https://github.com/zplug/zplug ~/.zplug

linkToHome .zshrc
linkToHome .vimrc
linkToHome .zshenv

gitClone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

linkToHome .tmux.conf
linkToHome .i3
linkToHome alacritty.yml
linkToHome .zsh