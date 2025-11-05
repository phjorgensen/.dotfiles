{
  inputs,
  system,
  ...
}:
{
  environment.systemPackages = [
    inputs.otel-tui.packages.${system}.otel-tui
  ];
}
