{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    jdk25_headless
    gradle_9
    # java-language-server
    jdt-language-server # Eclipse version of the LSP
  ];
}
