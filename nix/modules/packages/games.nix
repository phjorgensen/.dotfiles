{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    bolt-launcher
  ];
}
