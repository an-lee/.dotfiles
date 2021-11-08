#!/usr/bin/env bash

# setup Ruby env

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install rbenv
echo 'install rbenv...'
[ -f ~/.rbenv ] && rm -rf ~/.rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# try to compile dynamic bash extension to speed up rbenv
cd ~/.rbenv && src/configure && make -C src
~/.rbenv/bin/rbenv init

# checking rbenv installation
echo 'using rbenv-doctor...'
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# install ruby
rbenv install 3.0.2

# set 2.7.0 as global version
rbenv global 3.0.2

# upgrade
gem update --system

# install bundler
gem install bundler
gem -v
