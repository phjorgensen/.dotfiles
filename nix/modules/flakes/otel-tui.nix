{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.otel-tui.packages.${pkgs.stdenv.hostPlatform.system}.otel-tui
  ];
}
