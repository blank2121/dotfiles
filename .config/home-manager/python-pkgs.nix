{ config, pkgs, ... }:
{
	home.packages = with pkgs.python311Packages; [
		dataset
		matplotlib
		numpy
		pandas
		scikit-learn
		seaborn
	] ++ [
	];
}
