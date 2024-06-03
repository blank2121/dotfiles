{ config, pkgs, ... }:

{
  xsession.windowManager.xmonad.enable = true;

  programs.eww = {
    enable = true;
    configDir = ~/dotfiles/.config/eww;
  };
}
