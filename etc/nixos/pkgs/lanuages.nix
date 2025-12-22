# Programming languages
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    lua
	python314
  ];
}
