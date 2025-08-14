{ pkgs, ... }:
{
  stylix.cursor = {
    package = pkgs.fuchsia-cursor;
    name = "Fuchsia";
    size = 32;
  };
}
