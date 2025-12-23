# Programming languages
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	# Golang
    go

	# Lua
    lua
	luajitPackages.luarocks-nix

	# Python
	python314

	# Rust
	cargo
	rustc
  ];
}
