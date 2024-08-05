{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    firefox
    brave
    vivaldi

    # File handlers
    xfce.thunar
    nomacs
    obsidian
    gnome.cheese
    flameshot
    libreoffice-qt6-fresh
    vlc
    krita
    gimp
    gparted

    # Music
    spotify
    tidal-hifi

    # Messages
    telegram-desktop

    # System
    nitrogen
    pavucontrol
    pasystray
    opentabletdriver
    arandr
    psensor
  ];

  fonts.packages = with pkgs; [
    (nerdfonts.override {fonts = ["FiraCode"];})
    fira-code
  ];

  programs = {
    neovim = {
      enable = true;
      vimAlias = true;
      viAlias = true;
    };
  };
}
