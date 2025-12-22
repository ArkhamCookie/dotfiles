# Programs that are fun to have but not core to anything
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    cowsay
    fastfetch
  ];
}
