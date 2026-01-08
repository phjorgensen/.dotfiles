{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.anyrun.packages.${pkgs.system}.default
  ];
}
