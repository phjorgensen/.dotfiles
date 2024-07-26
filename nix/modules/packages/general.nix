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
    xfce.thunar
    nomacs
    nitrogen
    pavucontrol
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
