#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
echo "updating brew..."
brew update

echo "install zsh using brew..."
brew install zsh
echo "install zsh-completions using brew..."
brew install zsh-completions

# set zsh as default shell
echo "setting zsh as default shell..."
chsh -s /usr/local/bin/zsh

# install oh-my-zsh
echo "installing oh-my-zsh..."
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
