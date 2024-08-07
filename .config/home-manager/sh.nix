{ config, pkgs, ... }:

let
  alias = {
    bt = "bluetoothctl";
    lf = "~/dotfiles/.config/lf/lfub";
    lobster = "~/dotfiles/scripts/lobster.sh";
    mpv = "flatpak run io.mpv.Mpv";
    notify-send = "dunstify";
    nv = "nvim";
    rm = "trash-put";
    times = "sudo -E timeshift-gtk";
    wallpaper = "swww img --transition-type=any";
    zj = "zellij";
  };
  extra = ''
    export EDITOR="nvim"
    export PATH="$HOME/.cargo/bin:$PATH"
    export PATH="$HOME/.julia/packages/LanguageServer/Fwm1f/src/LanguageServer.jl:$PATH"
    export NIXPKGS_ALLOW_INSECURE=1
    export NIXPKGS_ALLOW_BROKEN=1
    export NIXPKGS_ALLOW_UNFREE=1
    eval "$(starship init zsh)"
    eval "$(zoxide init zsh)"
  '';
in
{
  home.packages = with pkgs; [
    zsh
  ];

  programs.zsh = {
    autocd = true;
    enable = true;
    defaultKeymap = "viins";
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = alias;
    syntaxHighlighting.enable = true;
    envExtra = extra;
  };
}
