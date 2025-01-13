{pkgs, ...}: {
  programs.hyprland.enable = true;

  environment.systemPackages = [
    pkgs.kitty
    pkgs.waybar
    pkgs.hyprpaper
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
