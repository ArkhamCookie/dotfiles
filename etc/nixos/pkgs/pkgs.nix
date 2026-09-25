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
    ./misc.nix
    ./programming.nix
    ./system.nix
    ./terminal.nix
  ];
}

