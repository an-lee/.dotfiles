#!/bin/bash

# build vim from source

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [[ -f ~/vim ]]; then
  git clone https://github.com/vim/vim.git ~/vim
else
  cd ~/vim && git pull
fi

cd ~/vim

./configure --with-features=huge --enable-gui=auto

# make & install
make
make install

# clean up
make clean && make distclean
