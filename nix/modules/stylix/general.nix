{pkgs, ...}: {
  stylix = {
    enable = true;

    image = ../../../stow_home/wallpapers/Pictures/Wallpapers/landscape/mountain-lake.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    polarity = "dark";

    fonts = {
      #   serif = {
      #     package = pkgs.dejavu_fonts;
      #     name = "DejaVu Serif";
      #   };

      #   sansSerif = {
      #     package = pkgs.dejavu_fonts;
      #     name = "DejaVu Sans";
      #   };

      #   monospace = {
      #     package = pkgs.dejavu_fonts;
      #     name = "DejaVu Sans Mono";
      #   };

      emoji = {
        package = pkgs.nordzy-icon-theme;
        name = "Noto Color Emoji";
      };
    };

    opacity.terminal = 0.8;
    opacity.desktop = 0.4;
  };
}
