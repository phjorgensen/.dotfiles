{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.komlesukker.packages.${pkgs.system}.default
  ];
}
