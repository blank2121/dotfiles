{ config, pkgs, ... }:

let
  alias = {
    bt = "bluetoothctl";
    lf = "~/dotfiles/.config/lf/lfub";
    lobster = "~/dotfiles/scripts/lobster.sh";
    mpv = "flatpak run io.mpv.Mpv";
    notify-send = "dunstify";
    nvm = "nvim";
    nv = "nix run ~/nixvim# --";
    rm = "trash-put";
    times = "sudo -E timeshift-gtk";
    wallpaper = "swww img --transition-type=any";
    zj = "zellij";
  };
  extra = ''
    export EDITOR="nv"
    export PATH="$HOME/.cargo/bin:$PATH"
    export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
    export PATH="$HOME/.julia/packages/LanguageServer/Fwm1f/src/LanguageServer.jl:$PATH"
    eval "$(starship init zsh)"
    eval "$(zoxide init zsh)"
    eval $(thefuck --alias)
  '';
in
{
  home.packages = with pkgs; [
    zsh
  ];

  programs.zsh = {
    autocd = true;
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = alias;
    syntaxHighlighting.enable = true;
    envExtra = extra;
  };
}
