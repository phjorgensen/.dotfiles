{pkgs, ...}: {
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  programs.hyprlock.enable = true;
  programs.waybar.enable = true;

  services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    hyprpaper
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
