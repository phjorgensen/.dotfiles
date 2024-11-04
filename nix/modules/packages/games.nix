{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    runelite
  ];

  services.flatpak.enable = true;
}
