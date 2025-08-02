{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    librewolf
    firefox
    firefox-devedition
    brave
    nyxt

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
    presenterm
    tt # Terminal typing test

    cheese # webcam capture
    tidal-hifi # Tidal music streaming

    # Messages
    telegram-desktop
    signal-desktop

    # Utility
    qalculate-qt
    libqalculate
    lxappearance

    # System
    # nitrogen
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

  # Run fc-list to list fonts, `fc-list | grep <name>` for specific font.
  fonts.packages = with pkgs; [
    nerd-fonts._0xproto
    nerd-fonts.droid-sans-mono
    nerd-fonts.fira-code
    nerd-fonts.noto
    nerd-fonts.jetbrains-mono # JetBrainsMonoNLNerdFont, the classic
    nerd-fonts.blex-mono # BlexMonoNerdFontMono, nice and clean, but just a bit extra
    nerd-fonts.gohufont # GohuFont11NerdFontMono, Pokémon font
    nerd-fonts.terminess-ttf # TerminessNerdFontMono, Pokémon font, but not so much
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
