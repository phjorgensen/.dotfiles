{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.anyrun.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
