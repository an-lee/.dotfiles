#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install zsh depend on OS
if [[ "$OSTYPE" == "darwin"* ]]; then
  ~/.dotfiles/scripts/zsh-mac.sh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  ~/.dotfiles/scripts/zsh-linux.sh
fi

# config for zsh
# install oh-my-zsh
echo "installing oh-my-zsh..."
rm -rf ~/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo "install aterminal..."
git clone https://github.com/guiferpa/aterminal.git $ZSH/plugins/aterminal

echo "install zsh-completions..."
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

echo "symlinking .zshrc..."
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
