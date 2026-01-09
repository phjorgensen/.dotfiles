{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.oq.packages.${pkgs.system}.default
  ];
}
