{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    librewolf
    firefox
    brave

    # Note-taking programs
    obsidian
    # qownnotes
    # joplin
    # joplin-desktop

    # File handlers
    xfce.thunar
    # kdePackages.dolphin
    nomacs
    libreoffice-qt6-fresh
    vlc # media player
    mpv # media player
    zathura # document viewer
    obs-studio
    # emacs
    playerctl # CLI for controlling music

    cheese # webcam capture

    # Messages
    telegram-desktop
    signal-desktop

    # Utility
    qalculate-qt
    libqalculate
    lxappearance

    # System
    # nitrogen
    pavucontrol
    pasystray
    networkmanagerapplet
    arandr
    mission-center # hardware monitoring
    gparted # partition editor
    keychain
    openssl
    openssl.dev
    gnupg
    dmidecode # BIOS info
    exiftool
    cachix
    udiskie # USB auto mounting
    font-awesome
    # line-awesome
    pywal
    # flameshot # screenshot program for X11
    grimblast # screenshot program for Hyprland
    wl-clipboard # wayland clipboard utilities
    # copyq # clipboard history
    helix
  ];

  fonts.packages = with pkgs; [
    nerd-fonts._0xproto
    nerd-fonts.droid-sans-mono
    nerd-fonts.fira-code
    nerd-fonts.noto
    nerd-fonts.jetbrains-mono
    nerd-fonts.blex-mono
    nerd-fonts.gohufont
    nerd-fonts.terminess-ttf
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
