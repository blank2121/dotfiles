{ config, pkgs, ... }:
let
  baseconfig = { allowUnfree = true; };
  unstable = import <nixos-unstable> { config = baseconfig; };
in {
	home.packages = with pkgs.python311Packages; [
		dataset
		matplotlib
		numpy
		pandas
		scikit-learn
		seaborn
	] ++ [
		unstable.python311Packages.chromadb
	];
}
