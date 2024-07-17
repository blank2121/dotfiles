{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    angryipscanner
    ansel
    brightnessctl
    btrfs-progs
    firefox
    flatpak
    gnumake
    godot_4
    hplip
    mpv
    openssl_3
    spotify
    thunderbird
    timeshift
    tor-browser
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
    haskellPackages.haskell-language-server
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
    trash-cli
    ueberzugpp
    vim
    wget
    which
    winetricks
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
