{ ... }:
{
  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 15;
      editor = false;
    };

    efi.canTouchEfiVariables = true;
  };
}

