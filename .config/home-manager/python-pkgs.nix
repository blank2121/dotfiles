{ config, pkgs, ... }:
{
	home.packages = with pkgs.python311Packages; [
		dataset
		ipython
		matplotlib
		notebook
		numpy
		pandas
		scikit-learn
		seaborn
		tensorflow
	];
}
