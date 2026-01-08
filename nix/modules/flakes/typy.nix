{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.typy.packages.${pkgs.system}.default
  ];
}
