#!/bin/bash

# config Vim

# symlink .vimrc
[ -f ~/.vimrc ] && rm ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# symlink .vimplugs
[ -f ~/.vimplugs ] && rm ~/.vimplugs
ln -s ~/.dotfiles/.vimplugs ~/.vimplugs

# clean & install plugins
vim -c 'PlugUpgrade|PlugClean|PlugInstall|PlugUpdate|qa'

# install coc extensions
vim -c 'CocInstall -sync coc-tsserver coc-json coc-html coc-prettier coc-yaml \
  coc-solargraph coc-pairs coc-wxml coc-css coc-tslint coc-highlight \
  coc-angular|q'
