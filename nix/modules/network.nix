{...}: {
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  networking.firewall = {
    enable = true;
    # allowedTCPPorts = [80 443];
  };

  # Enable networking
  networking.networkmanager.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
