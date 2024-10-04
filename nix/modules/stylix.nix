{pkgs, ...}: {
  stylix = {
    enable = true;
    image = ../../stow_home/wallpapers/Pictures/Wallpapers/firewatch.png;
    polarity = "dark";
    opacity.terminal = 0.8;
    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
    cursor.size = 24;
  };
}
