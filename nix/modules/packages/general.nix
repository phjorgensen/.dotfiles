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

  programs = {
    neovim = {
      enable = true;
      vimAlias = true;
      viAlias = true;
    };
  };
}
