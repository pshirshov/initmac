#!/bin/bash -xe

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap coursier/formulas
brew tap caskroom/versions
brew tap adoptopenjdk/openjdk
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
