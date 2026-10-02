# Programming languages and tools
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Comments/English
    harper

    # General Tools
    just

	# Golang
    go

	# JavaScipt
	bun
	deno
	pnpm

	# Lua
    lua
	luajitPackages.luarocks-nix

	# Python
	python314

	# Rust
	cargo
	rustc

    # Shell
    shellcheck
  ];
}
