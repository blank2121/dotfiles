{ config, pkgs, ... }:

{
  imports = [
    ./apps/default.nix
  ];

  home.packages = with pkgs; [
    rofi-wayland
    waybar
    wineWowPackages.waylandFull
    wlogout
    wl-clipboard
  ];

  home.file."hypr" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/hypr;
    target = ".config/hypr/";
  };
}
