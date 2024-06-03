{ config, pkgs, ... }:

let
  baseconfig = { allowUnfree = true; };
  unstable = import <nixos-unstable> { config = baseconfig; };
in {

  imports = [
    ./sh.nix
    ./services.nix
    ./general-pkgs.nix
    ./linux-specific.nix
    ./wm/wayland/hyprland.nix
    ./python-pkgs.nix
  ];
  home = {
    username = "winston";
    homeDirectory = "/home/winston";

    stateVersion = "23.11";

    sessionVariables = {
      EDITOR = "nv";
      NIXOS_OZONE_WL = "1";
      OZONE_WL = "1";
      ELECTRON_OZONE_PLATFORM_HINT = "auto";
    };
  };

  programs = {
    bacon.enable = true;
    bacon.settings = { };
    bat.enable = true;
    bottom.enable = true;

    eza = {
      enable = true;
      enableAliases = true;
      icons = true;
    };

    fzf = {
      enable = true;
      enableZshIntegration = true;
    };

    gh.enable = true;
    gitui.enable = true;
    home-manager.enable = true;

    lf = {
      enable = true;
      extraConfig = builtins.readFile ~/dotfiles/.config/lf/lfrc;
    };

    password-store.enable = true;

    pyenv = {
      enable = true;
      enableZshIntegration = true;
    };

    ripgrep.enable = true;
    starship = {
      enable = true;
      enableZshIntegration = true;
    };

    thefuck = {
      enable = true;
      enableInstantMode = true;
      enableZshIntegration = true;
    };

    zellij = {
      package = unstable.zellij;
      enable = true;
      enableZshIntegration = true;
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };

  # home.file conf
  home.file."starship.toml" = {
    enable = true;
    source = ~/dotfiles/.config/starship.toml;
    target = ".config/starship.toml";
  };
}
