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

    stylix = {
      enable = true;
      image = ~/Photos/wallpaper/Graphite-Mono/mountain_snow.jpg;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";
    };
}
