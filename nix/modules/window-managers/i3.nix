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
        xautolock
        polybarFull
        polybar-pulseaudio-control
        picom
        rofi
        dunst
      ];
    };

    displayManager.gdm = {
      enable = true;
      banner = ''
        Filip er cringe
      '';
    };
  };
}
