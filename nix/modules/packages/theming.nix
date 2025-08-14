{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    tinty
  ];
}
