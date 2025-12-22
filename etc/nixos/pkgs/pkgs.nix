{ lib, ... }:

{
  imports = [
    ./applications.nix
    ./editors.nix
    ./flatpak.nix
    ./fonts.nix
    ./fun.nix
    ./hyprland.nix
    ./misc.nix
    ./terminal.nix
  ];
}

