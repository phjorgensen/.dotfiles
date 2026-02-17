{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jetbrains.idea-oss

    # Unofficial and deprecated, change to [kotlin-lsp](https://github.com/Kotlin/kotlin-lsp) when it's more stable (not yet in nixpkgs either)
    kotlin-language-server
  ];
}
