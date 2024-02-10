{ config, pkgs, ... }:

{
	imports = [
		./apps/ui.nix
		./services.nix
	];
  home.packages = with pkgs; [
    #neovim
    brightnessctl
    btrfs-progs
    cmus
    dunst
    firefox
    flatpak
    gnumake
    hplip
    kitty
    mpv
    openssl_3
    protonvpn-gui
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
}
