{ config, pkgs, ... }:
let
  baseconfig = { allowUnfree = true; };
  unstable = import <nixos-unstable> { config = baseconfig; };
in {

	imports = [
		./apps/cli.nix
	];

  home.packages = with pkgs; [
    #neovim
    ani-cli
    bacon
    bat
    bottom
    eza
    fd
    fzf
    gcc
    gh
    ghc
    git
    gitui
    glow
    gnupg
    gum
    haskellPackages.cabal-install
    julia
    jq
    lf
    mark
    mprocs
    neofetch
    nmap
    nodejs_20
    ntfy
    openjdk
    pango
    pass
    poetry
    pyenv
    python312Full
    ripgrep
    rustup
    starship
    texliveFull
    thefuck
    trash-cli
    ueberzugpp
    vim
    wget
    which
    winetricks
    #zellij
    #zoxide
  ];
}
