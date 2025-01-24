{pkgs, ...}: {
  programs.hyprland.enable = true;
  programs.waybar.enable = true;
  programs.hyprlock.enable = true;

  services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    hyprpaper
    xdg-desktop-portal-hyprland
    hyprpolkitagent
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
