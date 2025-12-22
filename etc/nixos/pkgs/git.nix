# Git and related programs
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git # Core git
    gh # GitHub CLI tool
  ];
}
