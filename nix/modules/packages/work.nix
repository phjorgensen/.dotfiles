{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    slack
    gitkraken
    thunderbird
    teams-for-linux
  ];

  services.flatpak.enable = true;

  services.orca.enable = true; # Screen reader
  services.speechd.enable = true;
}
