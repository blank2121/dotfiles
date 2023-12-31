{ config, pkgs, ... }:

{
  # please dont use this on nixos.
  # that is for the configuration.nix file and it does it better.
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.extraConfig = builtins.readFile ~/dotfiles/.config/hypr/hyprland.conf;
}
