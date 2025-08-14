{
  inputs,
  system,
  ...
}: {
  environment.systemPackages = [
    inputs.komlesukker.packages.${system}.default
  ];
}
