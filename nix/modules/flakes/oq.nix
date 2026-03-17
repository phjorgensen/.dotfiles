{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.oq.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
