#!/bin/bash

# config Git
# symlink .gitigore
[ -f ~/.gitignore ] && rm ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore

# symlink .gitconfig
[ -f ~/.gitconfig ] && rm ~/.gitconfig
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
