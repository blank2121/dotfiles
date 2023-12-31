{ config, pkgs, ... }:

{
  home.file."neofetch" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/neofetch;
    target = ".config/neofetch/";
  };
}
