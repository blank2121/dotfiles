{ config, pkgs, ... }:

{
  home = {
    username = "winstonwalter";
    homeDirectory = "/Users/winstonwalter";

    stateVersion = "23.11";
    packages = with pkgs; [
      cargo
      fzf
      gh
      lf
      neovim
      nodejs_20
      pass
      pyenv
      ripgrep
      thefuck
      z-lua
      zellij
    ];

    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    file = {
      # # Building this configuration will create a copy of 'dotfiles/screenrc' in
      # # the Nix store. Activating the configuration will then make '~/.screenrc' a
      # # symlink to the Nix store copy.
      # ".screenrc".source = dotfiles/screenrc;

      ".config/nvim/" = {
        source = ../../dotfiles/nvim;
        recursive = true;
      };
    };

    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  programs = {
    home-manager.enable = true;

    neovim = {
      enable = true;
      defaultEditor = true;
    };
    fzf.enable = true;
    gh.enable = true;
    lf.enable = true;
    pyenv.enable = true;
    pyenv.enableZshIntegration = true;
    ripgrep.enable = true;
    thefuck.enable = true;
    z-lua.enable = true;
    zellij.enable = true;
  };

}
