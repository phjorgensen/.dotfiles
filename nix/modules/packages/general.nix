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
    # libreoffice-qt6-fresh
    vlc
    krita
    gimp
    gparted
    zathura

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
    arandr
    # Build failed, re-add later
    # mission-center # hardware monitoring
    openssl_3_3
    gnupg
    dmidecode # BIOS info
    exiftool
  ];

  programs = {
    neovim = {
      enable = true;
      vimAlias = true;
      viAlias = true;
    };
  };

  hardware.opentabletdriver.enable = true;
}
