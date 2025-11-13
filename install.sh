#!/bin/bash

echo "Setting up your Mac..."

# Install xCode cli tools
if [[ "$(uname)" == "Darwin" ]]; then
  echo "macOS detected..."

  if xcode-select -p &>/dev/null; then
    echo "Xcode already installed"
  else
    echo "Installing commandline tools..."
    xcode-select --install
  fi
fi

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>$HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
# Turn off brew analytics
brew analytics off

# Update Homebrew recipes
echo "Updating homebrew..."
brew update

echo "Installing dependencies with bundle"
brew tap homebrew/bundle
brew bundle --file ./homebrew/Brewfile

# MacOS settings
echo "Changing macOS defaults..."
defaults write com.apple.Dock autohide -bool TRUE
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write InitialKeyRepeat -int 15

csrutil status
echo "Installation complete..."

# Clone dotfiles repository
if [ ! -d "$HOME/dotfiles" ]; then
  echo "Cloning dotfiles repository..."
  git clone https://github.com/luigircruz/dotfiles.git $HOME/dotfiles
fi

# Navigate to dotfiles directory
cd $HOME/dotfiles || exit

# Stow dotfiles packages
echo "Stowing dotfiles..."
stow -t ~ aerospace karabiner neovim starship wezterm tmux zsh

echo "Dotfiles setup complete!"
