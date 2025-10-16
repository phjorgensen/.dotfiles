{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git

    # Languages
    gcc
    rustup
    go
    nodejs_22
    typescript
    nim
    sqlite
    luajitPackages.luarocks_bootstrap # Lua package manager

    pkg-config # helper tool used when compiling applications and libraries, it helps insert the correct compiler options on the command line
    direnv
    nix-direnv

    # IDEs
    # zed-editor
    vscode
    android-studio
    emacs

    # Formatters
    nixfmt-rfc-style
    stylua
    prettierd

    # SDKs
    dotnetCorePackages.dotnet_9.sdk

    # LSPs
    lua-language-server
    marksman # Markdown
    nixd # Nix
    gopls # Go
    # rust-analyzer
    tailwindcss-language-server
    typescript-language-server
    svelte-language-server
    nodePackages.intelephense # PHP
    hyprls # Hyprland
    # sourcekit-lsp # Swift

    # Debuggers
    lldb

    devcontainer
    devenv
    tree-sitter # For generating definitions for some languages (i.e. Swift)
    mermaid-cli # For generating diagrams from a mermaid definition
    structurizr-cli # For generating diagrams from Structurizr DSL

    # postman
    # bruno
    mosquitto # MQTT broker and client
    # ngrok

    zenity # Utility to display dialog box from the command line.
    # kdePackages.kdialog # KDE utility to display dialog box from the command line.
  ];
}
