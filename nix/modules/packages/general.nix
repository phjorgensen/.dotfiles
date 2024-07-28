{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    curl
    wget
    ripgrep
    fd
    unzip

    stow

    firefox
    brave
    xfce.thunar
    nomacs
    nitrogen
    pavucontrol
    pasystray
    yazi
  ];

  programs = {
    neovim = {
      enable = true;
      vimAlias = true;
      viAlias = true;
    };
  };
}
