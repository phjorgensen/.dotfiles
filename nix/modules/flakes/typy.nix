{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.typy.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
