{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.komlesukker.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
