{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    firefox
    vivaldi

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

  fonts.packages = [
    pkgs.nerd-fonts._0xproto
    pkgs.nerd-fonts.droid-sans-mono
    pkgs.nerd-fonts.fira-code
    pkgs.nerd-fonts.noto
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
