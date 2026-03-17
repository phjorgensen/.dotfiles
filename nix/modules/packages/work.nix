{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    slack
    gitkraken
    thunderbird
    # teams-for-linux # Beaks the build, use stable for now
    inputs.stable-nixpkgs.legacyPackages.${pkgs.stdenv.hostPlatform.system}.teams-for-linux
  ];

  services.flatpak.enable = true;

  services.orca.enable = true; # Screen reader
  services.speechd.enable = true;
}
