#!/bin/zsh

# Install a package manager
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

source ~/.zshrc

# Install necessary packages
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask spotify
brew install btop node nvm python


curl -fsSL https://bun.sh/install | bash

curl -sS https://starship.rs/install.sh | sh

# Copy over shared configs
mkdir -p ~/.config

cp -r ../Shared/.config ~/.config
