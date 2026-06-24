# For packages related hyprland and my desktop environment
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    hyprland # Because duh

    xdg-desktop-portal-gtk # Needed for screensharing

    # Lock and idle screen
    hypridle
    hyprlock

    alacritty # Terminal emulator
    cliphist # Wayland clipboard manager
    dunst # Notification-daemon
    wl-clipboard # Wayland clipboard
    wofi # Launcher/menu (for wayland)
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true; # Enable xwayland
  };

  services.hypridle.enable = true;
  programs.hyprlock.enable = true;
}

