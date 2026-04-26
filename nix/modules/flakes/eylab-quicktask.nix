{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.eylab-quicktask.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
