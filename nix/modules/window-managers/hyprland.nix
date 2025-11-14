{ pkgs, ... }:
{
  # Hyprland requires pipewire
  imports = [
    ../../modules/audio/pipewire.nix
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  programs.hyprlock.enable = true;
  programs.waybar.enable = true;

  # services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    # Authentication agent
    hyprpolkitagent

    # Hyprland default terminal
    kitty

    # Wallpaper manager
    # hyprpaper
    swww

    # Nofification daemon
    # dunst
    swaynotificationcenter

    # App launcher
    rofi
    # wofi
    # bemenu
    # tofi
    # walker
    # ulauncher

    # PulseAudio manager
    kdePackages.plasma-pa

    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
    xdg-desktop-portal-hyprland
  ];

  qt.enable = true;

  # Tell apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.MOZ_ENABLE_WAYLAND = "1";
}
