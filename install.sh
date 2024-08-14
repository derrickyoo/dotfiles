#!/bin/sh

# absolute path of script
# echo $(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf $HOME/.config/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

ln -s $DOTFILES/.wezterm.lua $HOME/.wezterm.lua

