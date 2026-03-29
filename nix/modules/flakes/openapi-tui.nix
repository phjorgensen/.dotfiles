{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.openapi-tui.packages.${pkgs.stdenv.hostPlatform.system}.openapi-tui
  ];
}
