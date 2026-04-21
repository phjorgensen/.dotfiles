{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.tree-sitter.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
