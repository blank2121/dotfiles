{config, pkgs, ... }:
{
	imports = [
		./neofetch.nix
		./zellij.nix
		./helix.nix
	];
}
