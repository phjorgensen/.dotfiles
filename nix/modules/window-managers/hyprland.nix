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

    hyprpaper
    swww
    dunst
    wofi

    # PulseAudio manager
    kdePackages.plasma-pa
    swaynotificationcenter

    # file picker may not work, this should fix it
    # xdg-desktop-portal-gtk
  ];

  qt.enable = true;

  # Tell apps to use wayland
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
