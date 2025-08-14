{ pkgs, ... }:
{
  environment.pathsToLink = [ "/libexec" ];

  services.displayManager.defaultSession = "none+i3";

  services.xserver = {
    enable = true;

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        i3status
        i3blocks
        i3lock
        xidlehook
        brightnessctl
        polybarFull
        polybar-pulseaudio-control
        picom
        rofi
        dunst
      ];
    };

    # Configure keymap in X11
    xkb = {
      layout = "no";
      variant = "";
    };
  };
}
