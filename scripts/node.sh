#!/usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

source ~/.bashrc

export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

nvm install --lts

rm -rf ~/.yarn

curl -o- -L https://yarnpkg.com/install.sh | bash

source ~/.bashrc
