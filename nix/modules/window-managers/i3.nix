{pkgs, ...}: {
  environment.pathsToLink = ["/libexec"];

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
        polybarFull
        polybar-pulseaudio-control
        picom
        rofi
        dunst
      ];
    };
    # https://gitlab.com/jD91mZM2/xidlehook

    displayManager.gdm = {
      enable = true;
      banner = ''
        Filip er cringe
      '';
    };
  };
}
