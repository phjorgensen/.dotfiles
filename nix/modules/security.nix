{ ... }:
{
  # services.yubikey-agent.enable = true;

  services = {
    gnome.gnome-keyring.enable = true;
  };
}
