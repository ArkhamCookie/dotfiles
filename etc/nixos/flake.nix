{
  description = "ArkhamCookie's NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=v0.6.0";
  };

  outputs = { self, nixpkgs, nix-flatpak, ... }@inputs: {
    nixosConfigurations.knight = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
       nix-flatpak.nixosModules.nix-flatpak

       ./configuration.nix
     ];
    };
  };
}

