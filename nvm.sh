#!/usr/bin/env bash
nvm_version=v0.39.1

## nvm
if ! command -v nvm &> /dev/null
then
  echo 'nvm is not installed. Installing'
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$nvm_version/install.sh | bash
  source ~/.zshrc
  nvm install node
fi
