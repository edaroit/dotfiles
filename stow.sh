#! /usr/bin/env sh

# install nvim
mkdir -p ~/.config/nvim && stow -t ~/.config/nvim -d .config -S nvim

# install zsh
stow zsh

# install tmux
stow tmux

# install git
stow git
