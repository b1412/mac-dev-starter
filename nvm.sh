#!/usr/bin/env bash
nvm_version=

## nvm
if ! command -v nvm &> /dev/null
then
  echo 'nvm is not installed. Installing'
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
  source ~/.zshrc
  nvm install node
fi
