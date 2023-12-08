#!/bin/sh

# home-manager
rm -rf ~/.config/home-manager/
mkdir ~/.config/home-manager/
ln -s ~/dotfiles/.config/home-manager/home.nix ~/.config/home-manager/

# Starship
rm ~/.config/starship.toml
ln -s ~/dotfiles/.config/starship.toml ~/.config/

# Kitty
rm -rf ~/.config/kitty/
mkdir ~/.config/kitty/
ln -s ~/dotfiles/.config/kitty/* ~/.config/kitty/

# Waybar
rm -rf ~/.config/waybar/
mkdir ~/.config/waybar/
ln -s ~/dotfiles/.config/waybar/* ~/.config/waybar/

# hypr
rm -rf ~/.config/hypr/
mkdir ~/.config/hypr/
ln -s ~/dotfiles/.config/hypr/* ~/.config/hypr/

# zellij

# lf

# nvim
