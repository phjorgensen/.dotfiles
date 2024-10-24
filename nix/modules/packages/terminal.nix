{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Terminals
    kitty
    rxvt-unicode

    # Terminal utils
    fzf # fuzzy search
    ripgrep # better grep
    fd # better find
    zoxide # better cd
    unzip # archive unzip
    unar # archive unpacker
    jq # json processor
    xclip # system clipboard from console application
    curl
    wget
    stow
    unixtools.xxd
    xorg.xev # keyboard and mouse events
    glow
    nb # notes cli application

    # TUIs
    lazygit
    lazydocker
    yazi
    btop

    # Other
    tmux
    zellij
    fastfetch
    starship
  ];
}
