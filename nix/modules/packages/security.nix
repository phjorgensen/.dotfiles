{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    yubikey-manager
    # yubikey-touch-detector
  ];
}
