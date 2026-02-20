{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # jdk21_headless
    javaPackages.compiler.temurin-bin.jdk-21

    maven # Java build tool
    gradle_9 # Java build tool

    # java-language-server
    jdt-language-server # Eclipse version of the LSP
  ];
}
