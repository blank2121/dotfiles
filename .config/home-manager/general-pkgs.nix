{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    #neovim
    cron
    fd
    gcc
    ghc
    git
    glow
    gnupg
    gum
    haskellPackages.cabal-install
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
