{ ... }:
{
  programs.yubikey-touch-detector.enable = true;
  # services.yubikey-agent.enable = true; # SSH agent for YubiKey, will overwrite the Gnome Keyring
  services.gnome.gnome-keyring.enable = true;
}
