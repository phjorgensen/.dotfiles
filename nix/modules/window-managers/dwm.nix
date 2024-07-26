{pkgs, ...}: {
  services.xserver = {
    enable = true;

    windowManager.dwm = {
      enable = true;

      package = pkgs.dwm.override {
        conf = ./config.def.h;
        # patches = [
        #   ./my_config.patch
        # ];
      };
    };
  };

  environment.systemPackages = with pkgs; [
    i3status
    i3lock
    i3blocks
    polybarFull
    picom
    rofi
    dmenu
    lightdm
    st
  ];
}
