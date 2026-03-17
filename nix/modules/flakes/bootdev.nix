{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.bootdev.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
