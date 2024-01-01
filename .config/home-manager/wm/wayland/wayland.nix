{ config, pkgs, ... }:

{
  imports = [
    ./apps/default.nix
  ];

  home.packages = with pkgs; [
    rofi-wayland
    swww
    waybar
    wineWowPackages.waylandFull
    wl-clipboard
    wlogout
  ];

  home.file."hypr" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/hypr;
    target = ".config/hypr/";
  };
}
