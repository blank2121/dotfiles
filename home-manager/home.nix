{ config, pkgs, ... }:

{
  home = {
    username = "winstonwalter";
    homeDirectory = "/Users/winstonwalter";

    stateVersion = "23.11";

    packages = with pkgs; [
      bacon
      bat
      bottom
      cargo
      eza
      fzf
      gh
      gitui
      gnupg
      lf
      mprocs
      neovim
      nmap
      nodejs_20
      pass
      pyenv
      ripgrep
      starship
      thefuck
      trash-cli
      ueberzugpp
      which
      zellij
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
    neovim = {
      enable = true;
      defaultEditor = true;
    };
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
      envExtra = ''
        eval $(thefuck --alias)
        alias nv="nvim"
        alias lf="~/.config/lf/lfub"
        alias zj="zellij"
        alias rm="trash-put"
        export PATH="$HOME/.cargo/bin:$PATH"

      '';
    };
  };

}
