#!/bin/bash

# config Git
# symlink .gitigore
[ -f ~/.gitignore ] && rm ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

# git config
git config --global core.excludesfile '~/.gitignore'
