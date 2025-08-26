{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # aseprite
    # krita
    gimp
    kdePackages.kdenlive
  ];
}
