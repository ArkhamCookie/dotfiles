# System related programs
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # (de)compression tools
    zip
    unzip
  ];
}
