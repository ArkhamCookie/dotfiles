# System related programs
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # (de)compression tools
    zip
    unzip

	# nix related tools not included by default
	nix-index
  ];
}
