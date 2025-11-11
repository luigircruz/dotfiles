# Path to your dotfiles.
export DOTFILES=$HOME/dotfiles

# Removes ghostty config file from $HOME/.config/ghostty/ (if it exists) and symlinks the ghostty config file from the .dotfiles
rm -rf $HOME/.config/ghostty/config
ln -sw $DOTFILES/config/ghostty/config $HOME/.config/ghostty/config

# Removes aerospace.toml from $HOME/.config/aerospace/ (if it exists) and symlinks the aerospace.toml file from the .dotfiles
rm -rf $HOME/.config/aerospace/aerospace.toml
ln -sw $DOTFILES/config/aerospace/aerospace.toml $HOME/.config/aerospace/aerospace.toml

# Source aliases from .dotfiles
source $DOTFILES/zsh/aliases.zsh
