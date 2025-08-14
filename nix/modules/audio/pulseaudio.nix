{ pkgs, ... }:
{
  services.pipewire.enable = false;

  services.pulseaudio = {
    enable = true;
    support32Bit = true;
  };

  environment.systemPackages = with pkgs; [
    pavucontrol
    pasystray
    alsa-utils
  ];
}
