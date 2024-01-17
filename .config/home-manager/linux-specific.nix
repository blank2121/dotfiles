{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    #neovim
    brightnessctl
    btrfs-progs
    cmus
    dunst
    firefox
    flatpak
    gnumake
    kitty
    mpv
    openssl_3
    timeshift
    protonvpn-gui
  ];

  # apps
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    settings = {
      enable_audio_bell = false;
      include = "~/dotfiles/.config/kitty/themes/Decay-Green.conf";
    };
    extraConfig = ''
      background_opacity 0.85
    '';
  };


  # non-display server depended services

  services.dunst = {
    enable = true;
    configFile = "~/dotfiles/.config/dunst/dunstrc";
  };

}
