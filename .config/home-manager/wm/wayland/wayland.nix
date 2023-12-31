{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    rofi-wayland
    waybar
    wineWowPackages.waylandFull
    wlogout
    wl-clipboard
  ];
}
