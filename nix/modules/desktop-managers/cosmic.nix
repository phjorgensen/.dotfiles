{ pkgs, ... }:
{
  services.desktopManager.cosmic.enable = true;
  programs.xwayland.enable = true;
  programs.uwsm.enable = true;

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.swaylock = { };
  programs.waybar.enable = true;

  environment.systemPackages = with pkgs; [
    ghostty
    swww
    rofi
    swaynotificationcenter
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
