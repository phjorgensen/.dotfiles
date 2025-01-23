{pkgs, ...}: {
  programs.hyprland.enable = true;
  programs.waybar.enable = true;
  programs.hyprlock.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    hyprpaper
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
