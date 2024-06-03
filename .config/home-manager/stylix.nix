{ config, pkgs, ... }:

let
  stylix = pkgs.fetchFromGitHub {
      owner = "danth";
      repo = "stylix";
      rev = "...";
      sha256 = "...";
  };
in {
    imports = [ (import stylix).homeManagerModules.stylix ];

    stylix.polarity = "dark";
    stylix.image = ~/Photos/wallpaper/anime/wallhaven-3lg2y3_2560x1440.png;
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";

}
