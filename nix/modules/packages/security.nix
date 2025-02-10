{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # vulnix
    yubikey-manager
    # yubikey-touch-detector
  ];
}
