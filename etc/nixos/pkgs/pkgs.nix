{ lib, ... }:

{
  imports = [
    ./applications.nix
    ./editors.nix
    ./flatpak.nix
    ./fonts.nix
    ./fun.nix
    ./git.nix
    ./hyprland.nix
	./lanuages.nix
    ./misc.nix
    ./terminal.nix
  ];
}

