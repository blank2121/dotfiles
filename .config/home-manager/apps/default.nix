{ config, pkgs, ... }:

{
  imports = [
    ./neofetch.nix
    ./nvim.nix
    ./rofi.nix
    ./zellij.nix
  ];
}
