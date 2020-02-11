#!/bin/bash

# == vim ==
# symlink .vimrc
[ -f ~/.vimrc ] && rm ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# symlink .vimplugs.vimrc
[ -f ~/.vimplugs.vimrc ] && rm ~/.vimplugs.vimrc
ln -s ~/.dotfiles/.vimplugs.vimrc ~/.vimplugs.vimrc

# clean & install plugins
vim -c 'PlugClean|PlugInstall|qa'

# install coc extensions
vim -c 'CocInstall -sync coc-tsserver coc-json coc-html coc-prettier coc-yaml \
  coc-solargraph coc-pairs coc-wxml coc-css coc-tslint coc-hightlight|q'

# symlink .alias
[ -f ~/.alias ] && rm ~/.alias
ln -s ~/.dotfiles/.alias ~/.alias

# symlink .ctags
[ -f ~/.ctags ] && rm ~/.ctags
ln -s ~/.dotfiles/.ctags ~/.ctags

# symlink .gitigore
[ -f ~/.gitignore ] && rm ~/.gitignore
ln -s ~/.dotfiles/.gitignore ~/.gitignore

# == git ==
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
