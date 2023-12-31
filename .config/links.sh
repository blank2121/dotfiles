#!/bin/sh

# home-manager
rm -rf ~/.config/home-manager/
mkdir ~/.config/home-manager/
ln -s ~/dotfiles/.config/home-manager/** ~/.config/home-manager/

# Waybar
rm -rf ~/.config/waybar/
mkdir ~/.config/waybar/
ln -s ~/dotfiles/.config/waybar/** ~/.config/waybar/

# hypr
rm -rf ~/.config/hypr/
mkdir ~/.config/hypr/
ln -s ~/dotfiles/.config/hypr/* ~/.config/hypr/
