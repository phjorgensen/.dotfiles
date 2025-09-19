{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # vulnix
    yubikey-manager # CLI to manage YubiKeys, "ykman".
    yubioath-flutter # Official Yubico UI for managing YubiKeys
  ];
}
