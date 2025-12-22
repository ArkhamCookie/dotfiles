# "Normal" applications that are mainly standalone
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    audacity
    bleachbit
    kdePackages.dolphin
    drawio
    firefox
  ];
}
