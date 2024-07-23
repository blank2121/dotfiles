{ config, pkgs, ... }:
let
  baseconfig = { allowUnfree = true; };
  unstable = import <nixos-unstable> { config = baseconfig; };
in {
  home.packages = with pkgs; [
    angryipscanner
    bacon
    bat
    bottom
    brightnessctl
    btrfs-progs
    eza
    fd
    firefox
    flatpak
    fzf
    gcc
    gh
    ghc
    git
    gitui
    glow
    gnumake
    gnupg
    godot_4
    gum
    haskellPackages.cabal-install
    haskellPackages.haskell-language-server
    hplip
    jq
    julia
    lf
    mark
    mprocs
    mpv
    neofetch
    nmap
    nodejs_20
    ntfy
    openjdk
    openssl_3
    pandoc
    pango
    pass
    poetry
    pyenv
    python312Full
    remnote
    ripgrep
    rustup
    spotify
    starship
    texliveFull
    thunderbird
    timeshift
    tor-browser
    trash-cli
    ueberzugpp
    vim
    wget
    which
    winetricks
  ] ++ [unstable.ansel];

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

  programs.helix = {
    enable = true;
    settings = {
      theme = "base16_default";
      editor = {
        line-number = "relative";
        
      };
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        esc = [ "collapse_selection" "keep_primary_selection" ];
      }; 
    };
    extraPackages = with pkgs; [
      rust-analyzer
      marksman
    ];
  };

  home.file."neofetch" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/neofetch;
    target = ".config/neofetch/";
  };

  home.file."zellij" = {
    enable = true;
    recursive = true;
    source = ~/dotfiles/.config/zellij;
    target = ".config/zellij/";
  };
}
