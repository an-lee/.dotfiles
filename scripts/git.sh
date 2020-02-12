#!/bin/bash

# config Git
# symlink .gitigore
[ -f ~/.gitignore ] && rm ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore

# git config
git config --global core.excludesfile '~/.gitignore'
git config --global core.editor vim
git config --global user.name an-lee
git config --global user.email an.lee.work@gmail.com
git config --global alias.co checkout
git config --global alias.cm commit
git config --global alias.br bransh
git config --global alias.st status
git config --global alias.l log --pretty=format:"%h <%an> %ar %s"
