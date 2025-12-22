# For packages that don't really fit anywhere else
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
  ];
}

