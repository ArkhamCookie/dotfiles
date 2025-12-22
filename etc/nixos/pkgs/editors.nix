# Editor related programs
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Core editors
    vim # Editor for sudo
    micro # A simpler but good editor
    neovim # Default editor for terminal
    vscodium # Desktop editor

    # Language servers

    # Linters
    shellcheck
  ];
}
