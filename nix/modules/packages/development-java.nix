{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jdk25_headless

    maven # Java build tool
    # gradle_9 Java build tool

    # java-language-server
    jdt-language-server # Eclipse version of the LSP
  ];
}
