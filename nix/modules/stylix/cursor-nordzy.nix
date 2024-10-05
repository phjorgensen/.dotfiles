{pkgs, ...}: {
  stylix.cursor = {
    package = pkgs.nordzy-cursor-theme;
    name = "Nordzy";
    size = 32;
  };
}
