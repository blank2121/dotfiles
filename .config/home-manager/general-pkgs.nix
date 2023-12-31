{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    #neovim
    cron
    fd
    gcc
    git
    gnupg
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
