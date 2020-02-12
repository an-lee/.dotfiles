#!/bin/bash

# symlink .alias
[ -f ~/.alias ] && rm ~/.alias
ln -s ~/.dotfiles/.alias ~/.alias

