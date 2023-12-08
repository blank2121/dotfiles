#!/bin/sh

# home-manager
rm -rf ~/.config/home-manager/
mkdir ~/.config/home-manager/
ln -s ~/dotfiles/.config/home-manager/home.nix ~/.config/home-manager/

# Starship
rm ~/.config/starship.toml
ln -s ~/dotfiles/.config/starship.toml ~/.config/
