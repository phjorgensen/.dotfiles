{
  inputs,
  system,
  ...
}: {
  environment.systemPackages = [
    inputs.bootdev.packages.${system}.default
  ];
}
