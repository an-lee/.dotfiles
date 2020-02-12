#!/usr/bin/env bash

# update apt
echo "Updating apt..."
sudo apt-get update
sudo apt upgrade

# install zsh
echo "installing zsh..."
sudo apt install zsh

# use zsh as default shell
chsh -s /bin/zsh
