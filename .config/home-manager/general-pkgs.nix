{ config, pkgs, ... }:

{

	imports = [
		./apps/cli.nix
	];

  home.packages = with pkgs; [
    #neovim
    bacon
    bat
    bottom
    cron
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
    lf
    mark
    mprocs
    neofetch
    nmap
    nodejs_20
    openjdk
    pango
    pass
    poetry
    pyenv
    python312Full
    ripgrep
    rustup
    starship
    thefuck
    trash-cli
    ueberzugpp
    vim
    wget
    which
    winetricks
    zellij
    zoxide
  ];
}
