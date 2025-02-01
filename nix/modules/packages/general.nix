{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    firefox
    vivaldi

    # File handlers
    xfce.thunar
    kdePackages.dolphin
    nomacs
    obsidian
    qownnotes
    joplin
    joplin-desktop
    cheese
    flameshot # Screenshot program for X11
    grimblast # Screenshot program for Hyprland
    wl-clipboard
    copyq
    libreoffice-qt6-fresh
    vlc
    krita
    gimp
    gparted
    zathura
    obs-studio

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
    mission-center # hardware monitoring
    keychain
    openssl_3_3
    gnupg
    dmidecode # BIOS info
    exiftool
    cachix
    udiskie # USB auto mounting
    font-awesome
    # line-awesome
    pywal
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
