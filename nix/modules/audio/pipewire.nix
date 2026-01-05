{ pkgs, inputs, ... }:
{
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    wireplumber.enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

    wireplumber.extraConfig.bluetoothEnhancements = {
      "monitor.bluez.properties" = {
        "bluez5.enable-sbc-xq" = true;
        "bluez5.enable-msbc" = true;
        "bluez5.enable-hw-volume" = true;
        "bluez5.roles" = [
          "hsp_hs"
          "hsp_ag"
          "hfp_hf"
          "hfp_ag"
        ];
      };
    };
  };

  environment.systemPackages = with pkgs; [
    pavucontrol
    # pasystray
    inputs.stable-nixpkgs.legacyPackages.${pkgs.system}.pasystray
    alsa-utils
    pulseaudio # Still need this for pactl to control the audio from CLI
  ];
}
