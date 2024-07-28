{pkgs, ...}: {
  environment.pathsToLink = ["/libexec"];

  services.xserver = {
    enable = true;

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        i3status
        i3lock
        xautolock
        i3blocks
        polybarFull
        polybar-pulseaudio-control
        picom
        rofi
        lightdm
        dunst
      ];
    };
  };
}
