#!/bin/bash -xe

git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap coursier/formulas
brew tap caskroom/versions
brew tap adoptopenjdk/openjdk
brew tap homebrew/cask-drivers

