#!/bin/bash

# Disclaimer, things not installed in this script
# - Xcode
# - Android Studio
# - iterm2

# Install HomeBrew for a package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install react-native deps, nvm, and yarn.
brew install node
brew install watchman
brew install nvm
brew install yarn

# Install some useful programs
brew install slack
brew install --cask visual-studio-code

# Install a few node versions for the different projects we'll be on
nvm install 12
nvm install 16
nvm install 18
nvm install 20

# Install oh-my-zsh for a better terminal
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy our .vimrc for a better vim experience.
cp .vimrc ~/.vimrc

echo "Done :)"
