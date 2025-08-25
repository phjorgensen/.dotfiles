{ inputs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    slack
    gitkraken
    thunderbird-128

    # teams-for-linux
    inputs.stable-nixpkgs.legacyPackages.${pkgs.system}.teams-for-linux
  ];

  services.flatpak.enable = true;
}
