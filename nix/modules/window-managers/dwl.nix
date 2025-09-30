{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    dwl
    dwlb
    ghostty
  ];
}
