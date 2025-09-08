{ pkgs, ... }:
{
  programs.niri = {
    enable = true;
  };

  programs.waybar.enable = true;

  # services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    # Authentication agent
    hyprpolkitagent

    # Wallpaper manager
    swww

    # Lock screen
    swaylock

    # Nofification daemon
    swaynotificationcenter

    # App launcher
    rofi-wayland
    fuzzel
  ];

  qt.enable = true;

  # Tell apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.MOZ_ENABLE_WAYLAND = "1";
}
