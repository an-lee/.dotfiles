#!/bin/bash

# config Vim

# symlink .vimrc
[ -f ~/.vimrc ] && rm ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# symlink .vimplugs
[ -f ~/.vimplugs ] && rm ~/.vimplugs
ln -s ~/.dotfiles/.vimplugs ~/.vimplugs

# symlink coc extensions
[ -f ~/.config/coc/extensions/package.json ] && rm ~/.config/coc/extensions/package.json
ln -s ~/.dotfiles/coc/extensions/package.json ~/.config/coc/extensions/package.json

# clean & install plugins
vim -c 'PlugUpgrade|PlugClean|PlugInstall|PlugUpdate|qa'

# install coc extensions
# vim -c 'CocInstall -sync coc-tsserver coc-json coc-html coc-prettier coc-yaml \
#   coc-solargraph coc-pairs coc-wxml coc-css coc-tslint coc-highlight \
#   coc-angular|q'
