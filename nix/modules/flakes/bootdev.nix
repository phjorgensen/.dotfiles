{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.bootdev.packages.${pkgs.system}.default
  ];
}
