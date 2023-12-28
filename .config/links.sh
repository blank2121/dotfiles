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
rm -rf ~/.config/zellij/
mkdir ~/.config/zellij/
ln -s ~/dotfiles/.config/zellij/* ~/.config/zellij/

# lf
rm -rf ~/.config/lf/
mkdir ~/.config/lf/
ln -s ~/dotfiles/.config/lf/** ~/.config/lf/

# nvim
rm -rf ~/.config/nvim/
mkdir ~/.config/nvim/
ln -s ~/dotfiles/.config/nvim/** ~/.config/nvim/

# rofi
rm -rf ~/.config/rofi/
mkdir ~/.config/rofi/
ln -s ~/dotfiles/.config/rofi/** ~/.config/rofi/

# neofetch
rm -rf ~/.config/neofetch/
mkdir ~/.config/neofetch/
ln -s ~/dotfiles/.config/neofetch/** ~/.config/neofetch/

# dunst
rm -rf ~/.config/dunst/
mkdir ~/.config/dunst/
ln -s ~/dotfiles/.config/dunst/** ~/.config/dunst/
