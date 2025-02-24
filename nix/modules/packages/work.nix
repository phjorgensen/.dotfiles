{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    teams-for-linux
    slack
    gitkraken
    thunderbird-128
    # kitemaker
    microsoft-edge
  ];

  services.flatpak.enable = true;
}
