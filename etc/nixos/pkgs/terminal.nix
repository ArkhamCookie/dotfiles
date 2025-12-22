# Terminal related programs
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    catimg # Image viewer
    glow # Markdown viewer
    htop # Process viewer
    jq # JSON processer
    zellij # Terminal workspace

    # More core commands
    file

    # "Upgraded" core commands
    bat # cat
    difftastic # diff
    dust # du
    eza # ls
    fd # find
    ripgrep # grep
    ripgrep-all # grep (with extra support than ripgrep)
    tealdeer # man
  ];
}
