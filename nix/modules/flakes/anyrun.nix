{
  inputs,
  system,
  ...
}: {
  environment.systemPackages = [
    inputs.anyrun.packages.${system}.anyrun
  ];
}
