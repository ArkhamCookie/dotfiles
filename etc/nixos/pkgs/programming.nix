# Programming languages and tools
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # General Tools
    just

	# Golang
    go

	# JavaScipt
	bun
	deno

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
