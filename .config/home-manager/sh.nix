{ config, pkgs, ... }:

let
  alias = {
    zj = "zellij";
    wallpaper = "swww img --transition-type=any";
    times = "sudo -E timeshift-gtk";
    rm = "trash-put";
    notify-send = "dunstify";
    nv = "nvim";
    mpv = "flatpak run io.mpv.Mpv";
    lobster = "~/dotfiles/scripts/lobster.sh";
    lf = "~/dotfiles/.config/lf/lfub";
  };
  extra = ''
    export PATH="$HOME/.cargo/bin:$PATH"
    export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
    eval "$(starship init zsh)"
    eval "$(zoxide init zsh)"
    eval $(thefuck --alias --enable-experimental-instant-mode)
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
