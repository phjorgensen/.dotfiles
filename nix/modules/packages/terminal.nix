{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Terminals
    wezterm

    # Terminal utils
    fzf # fuzzy search
    ripgrep # better grep
    fd # better find
    zoxide # better cd
    unzip # archive unzip
    unar # archive preview
    jq # json processor
    xclip # system clipboard
    curl
    wget
    stow

    # TUIs
    lazygit
    yazi
    btop

    # Other
    tmux
    fastfetch
    starship
  ];
}
