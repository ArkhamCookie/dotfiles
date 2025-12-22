# For packages and settings related to flatpak.

{ config, lib, pkgs, ... }:

{
  services.flatpak.enable = true;

  # Flatpak Packages
  services.flatpak.packages = [
    "com.discordapp.Discord"
  ];
}

