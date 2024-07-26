{pkgs, ...}: {
  services.xserver.windowManager.dwm = {
    enable = true;
    package = pkgs.dwm.override {
      patches = [
        ./my_config.patch
      ];
    };
  };
}
