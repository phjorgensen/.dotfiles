{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Terminals
    kitty
    alacritty

    # Terminal utils
    fzf # fuzzy search
    ripgrep # better grep
    fd # better find
    zoxide # better cd
    bat # better cat
    zip # arcive zip
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
    pandoc # document converter

    # TUIs
    lazygit
    lazydocker
    yazi
    btop
    w3m # terminal browser

    # Other
    tmux
    zellij
    fastfetch
    starship
  ];
}
