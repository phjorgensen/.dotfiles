{ pkgs, ... }:
{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    curl
    wget
    ripgrep
    fd
    unzip

    git
    stow

    gcc
    nodejs
    rustup
    stylua
    nodePackages.prettier
    tmux
    wezterm
    st
    fzf
    lazygit
    btop

    firefox
    xfce.thunar
    nomacs
    fastfetch
    starship
    spice-vdagent
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
