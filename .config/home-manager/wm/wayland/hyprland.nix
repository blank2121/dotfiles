{ config, pkgs, ... }:

{
  imports = [
    ./wayland.nix
  ];
  # please dont use this on nixos.
  # that is for the configuration.nix file and it does it better.
  wayland.windowManager.hyprland.enable = true;

  # outdated for config
  #wayland.windowManager.hyprland.extraConfig = builtins.readFile ~/dotfiles/.config/hypr/hyprland.conf;
}
