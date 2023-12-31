{ config, pkgs, ... }:

{
  home.file."rofi" = {
    enable = true;
    source = ~/dotfiles/.config/rofi/config.rasi;
    target = ".config/rofi/config.rasi";
  };
}
