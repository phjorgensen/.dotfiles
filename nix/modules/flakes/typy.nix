{
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = [
    inputs.typy.packages.${system}.default
  ];
}
