{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    kotlin
    ktfmt
    ktlint
    detekt

    jetbrains.idea-oss
    # jetbrains.idea # Non-free

    javaPackages.compiler.temurin-bin.jdk-21

    maven # Java build tool
    gradle_9 # Java build tool

    # Unofficial and deprecated, change to [kotlin-lsp](https://github.com/Kotlin/kotlin-lsp) when it's more stable (not yet in nixpkgs either)
    kotlin-language-server
  ];
}
