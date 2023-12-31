{ config, pkgs, ... }:

{
  home.file."zellij" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/zellij;
    target = ".config/zellij/";
  };
}
