#!/usr/bin/env bash
nvm_version=0.39.1

## install brew
if ! command -v brew &> /dev/null
then
  echo 'Brew is not installed. Installing'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if ! command -v sdk &> /dev/null
then
  echo 'Sdk is not installed. Installing'
  curl -s "https://get.sdkman.io" | bash
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

## install java-related tools via sdkman
sdk install maven

brew update
brew tap homebrew/cask-versions
brew tap ringohub/redis-cli

# utilities

for value in etcd protobuf grpcurl go git git-gui awscli tree kubernetes-cli kubernetes-helm yarn packer wget httpie vim zsh make redis-cli mysql-client
do
  if ! [ -x "$(command -v $value)" ];
  then
    echo $value 'is not installed. Installing'
    brew install $value
  fi
done


## oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## nvm
./nvm.sh