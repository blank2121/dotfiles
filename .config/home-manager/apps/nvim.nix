{ config, pkgs, ... }:

{
  home.file."neovim" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/nvim;
    target = ".config/nvim/";
  };
}
