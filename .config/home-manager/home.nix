{ config, pkgs, ... }:

{
  home = {
    username = "winston";
    homeDirectory = "/home/winston";

    stateVersion = "23.11";

    packages = with pkgs; [
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
      gitui
      gnupg
      lf
      mark
      mprocs
      neofetch
      neofetch
      nmap
      nodejs_20
      openjdk
      pango
      poetry
      pass
      python312Full
      ripgrep
      rustup
      starship
      thefuck
      timeshift
      trash-cli
      ueberzugpp
      which
      zellij
      zoxide
      zsh
    ];

    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs = {
    home-manager.enable = true;
    bottom.enable = true;
    fzf.enable = true;
    fzf.enableZshIntegration = true;
    gh.enable = true;
    gitui.enable = true;
    lf.enable = true;
    #neovim = {
    #  enable = true;
    #  defaultEditor = true;
    #};
    password-store.enable = true;
    pyenv.enable = true;
    pyenv.enableZshIntegration = true;
    ripgrep.enable = true;
    starship = {
      enable = true;
      enableZshIntegration = true;
    };
    thefuck.enable = true;
    thefuck.enableZshIntegration = true;
    thefuck.enableInstantMode = true;
    zellij.enable = true;
    zellij.enableZshIntegration = true;
    zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      envExtra = ''
        eval "$(starship init zsh)"
        eval "$(zoxide init zsh)"
        eval $(thefuck --alias --enable-experimental-instant-mode)
        alias homes="home-manager switch"
        alias lf="~/.config/lf/lfub"
        alias lobster="~/Projects/lobster/lobster.sh"
        alias mpv="flatpak run io.mpv.Mpv"
        alias notify-send="dunstify"
        alias nv="nvim"
        alias rm="trash-put"
        alias times="sudo -E timeshift-gtk"
        alias wallpaper="swww img --transition-type=any"
        alias zj="zellij"
        export PATH="$HOME/.cargo/bin:$PATH"
        export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
      '';
    };
  };
}
