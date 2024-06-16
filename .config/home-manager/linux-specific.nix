{ config, pkgs, ... }:

{
	imports = [
		./services.nix
	];
  home.packages = with pkgs; [
    #neovim
    angryipscanner
    brightnessctl
    btrfs-progs
    cmus
    dunst
    firefox
    flatpak
    gnumake
    godot_4
    obs-studio
    hplip
    kitty
    mpv
    openssl_3
    spotify
    thunderbird
    timeshift
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

  home.file."rofi" = {
    enable = true;
    source = ~/dotfiles/.config/rofi/config.rasi;
    target = ".config/rofi/config.rasi";
  };
}
