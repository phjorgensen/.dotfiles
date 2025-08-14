{ pkgs, ... }:
{
  services.xserver = {
    enable = true;

    windowManager.dwm = {
      enable = true;

      package = pkgs.dwm.override {
        conf = ./config.def.h;
      };
    };

    # Configure keymap in X11
    xkb = {
      layout = "no";
      variant = "";
    };
  };

  environment.systemPackages = with pkgs; [
    dmenu
    dwmblocks
    picom
  ];
}
