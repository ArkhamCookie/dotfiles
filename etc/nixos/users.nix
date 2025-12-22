# Manage system users
{ pkgs, ... }:

{
  users.users.arkhamcookie = {
    isNormalUser = true;
    description = "Main user";
    extraGroups = [ "wheel" ];
    shell = pkgs.bash;
    packages = with pkgs; [ # User only packages
      prismlauncher
    ];
  };
}
