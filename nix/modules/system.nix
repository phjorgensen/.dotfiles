{...}: {
  nix = {
    optimise = {
      automatic = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };

  fonts.fontconfig.defaultFonts = {
    serif = ["Liberation Serif"];
    sansSerif = ["Liberation Sans"];
    monospace = ["BerkeleyMono"];
  };
}
