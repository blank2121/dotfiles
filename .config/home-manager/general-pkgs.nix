{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    #neovim
    cron
    fd
    gcc
    git
    glow
    gnupg
    gum
    mark
    mprocs
    neofetch
    nmap
    nodejs_20
    openjdk
    pango
    poetry
    python312Full
    rustup
    trash-cli
    ueberzugpp
    vim
    wget
    which
    winetricks
  ];
}
