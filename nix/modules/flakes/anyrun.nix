{
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = [
    inputs.anyrun.packages.${system}.default
  ];
}
