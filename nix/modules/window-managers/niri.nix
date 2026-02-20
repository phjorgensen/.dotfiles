{ pkgs, ... }:
{
  imports = [
    ../../modules/audio/pipewire.nix
  ];

  programs.niri.enable = true;

  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.swaylock = { };

  programs.waybar.enable = true;

  # services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    # defaults for Niri
    alacritty
    fuzzel
    swaylock
    swayidle
    mako

    ghostty
    rofi

    # Nofification daemon
    swaynotificationcenter

    # Wallpaper manager
    swww

    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];

  qt.enable = true;

  # Tell apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.ELECTRON_OZONE_PLATFORM_HINT = "auto";
  environment.sessionVariables.MOZ_ENABLE_WAYLAND = "1";
}
