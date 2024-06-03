{ config, pkgs, ... }:

let
  stylix = pkgs.fetchFromGitHub {
      owner = "danth";
      repo = "stylix";
      rev = "...";
      sha256 = "...";
  };
in {
	imports = [
		./services.nix
		(import stylix).homeManagerModules.stylix
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

  # stylix
  stylix.polarity = "dark";
  stylix.image = ~/Photos/wallpaper/anime/wallhaven-3lg2y3_2560x1440.png;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

  home.file."rofi" = {
    enable = true;
    source = ~/dotfiles/.config/rofi/config.rasi;
    target = ".config/rofi/config.rasi";
  };
}
