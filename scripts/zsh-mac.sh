#!/usr/bin/env bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
echo "updating brew..."
brew update

echo "install zsh using brew..."
brew install zsh

# set zsh as default shell
echo "setting zsh as default shell..."
chsh -s /usr/local/bin/zsh
