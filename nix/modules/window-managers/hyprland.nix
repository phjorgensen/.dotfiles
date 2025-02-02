{pkgs, ...}: {
  imports = [
    ../../modules/audio/pipewire.nix
  ];

  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  programs.hyprlock.enable = true;
  programs.waybar.enable = true;

  services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    # Authentication agent
    hyprpolkitagent

    # Hyprland default terminal
    kitty

    # Wallpaper manager
    # hyprpaper
    swww

    # Logout menu
    wlogout

    # Nofification daemon
    # dunst
    swaynotificationcenter

    # App launcher
    kickoff
    # wofi
    # rofi
    # ulauncher

    # PulseAudio manager
    kdePackages.plasma-pa

    # file picker may not work, this should fix it
    # xdg-desktop-portal-gtk
  ];

  qt.enable = true;

  # Tell apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.MOZ_ENABLE_WAYLAND = "1";
}
