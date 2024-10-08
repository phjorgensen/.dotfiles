{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    firefox
    brave
    vivaldi

    # File handlers
    xfce.thunar
    nautilus
    nomacs
    obsidian
    logseq
    cheese
    flameshot
    libreoffice-qt6-fresh
    vlc
    krita
    gimp
    gparted
    syncthing
    syncthingtray

    # Messages
    telegram-desktop

    # Utility
    qalculate-qt
    lxappearance

    # System
    # nitrogen
    pavucontrol
    pasystray
    kdePackages.plasma-pa
    opentabletdriver
    arandr
    mission-center
    autofs5
    xorg.xmodmap
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
