{
  pkgs,
  inputs,
  ...
}:
{
  environment.systemPackages = [
    inputs.otel-tui.packages.${pkgs.system}.otel-tui
  ];
}
