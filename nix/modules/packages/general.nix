{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    librewolf
    firefox
    firefox-devedition
    brave
    # nyxt
    lynx
    qutebrowser

    # Note-taking programs
    obsidian

    # File handlers
    xfce.thunar
    nomacs # image viewer
    libreoffice-qt6-fresh # office solution
    vlc # media player
    mpv # media player
    zathura # document viewer
    obs-studio # screen and camera recorder
    playerctl # CLI for controlling music
    presenterm # terminal presentation tool
    tt # terminal typing test

    cheese # webcam capture
    tidal-hifi # Tidal music streaming

    # Messages
    telegram-desktop
    signal-desktop

    # Utility
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

    grim # Screenshot program
    slurp # Select region
    satty # Screenshot annotaions
    imagemagick # Edit image

    grimblast # screenshot program for Hyprland
    # flameshot # screenshot program for X11

    wl-clipboard # wayland clipboard utilities
    # copyq # clipboard history
    # helix
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
