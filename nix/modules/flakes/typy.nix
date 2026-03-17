{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.typy.packages.${pkgs.hostPlatform.system}.default
  ];
}
