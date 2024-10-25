{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    firefox
    vivaldi

    # File handlers
    xfce.thunar
    nomacs
    obsidian
    cheese
    flameshot
    libreoffice-qt6-fresh
    vlc
    krita
    gimp
    gparted

    # Messages
    telegram-desktop

    # Utility
    qalculate-qt
    lxappearance

    # System
    nitrogen
    pavucontrol
    pasystray
    networkmanagerapplet
    opentabletdriver
    arandr
    mission-center # hardware monitoring
    openssl_3_3
    gnupg
  ];

  programs = {
    neovim = {
      enable = true;
      vimAlias = true;
      viAlias = true;
    };
  };
}
