{ pkgs, ... }:
{
  environment.pathsToLink = [ "/libexec" ];

  services.xserver = {
    enable = true;

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        i3status
        i3lock
        i3blocks
	      polybarFull
	      picom
	      rofi
      ];
    };
  };
}