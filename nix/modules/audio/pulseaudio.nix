{...}: {
  services.pipewire.enable = false;

  hardware.pulseaudio = {
    enable = true;
    support32Bit = true;
  };
}
