{ ... }:
{
  # services.yubikey-agent.enable = true; # SSH agent for YubiKey, will overwrite the Gnome Keyring
  programs.yubikey-touch-detector.enable = true;

  services = {
    gnome.gnome-keyring.enable = true;
  };
}
