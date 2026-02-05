{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    gh

    # Languages
    gcc
    rustup
    go
    nodejs_22
    typescript
    nim
    sqlite
    luajitPackages.luarocks_bootstrap # Lua package manager
    powershell

    pkg-config # helper tool used when compiling applications and libraries, it helps insert the correct compiler options on the command line
    direnv
    nix-direnv
    mise # Like nvm, but for all languages

    # IDEs
    # zed-editor
    vscode

    # Formatters
    nixfmt
    stylua
    prettierd

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
    gdb

    devcontainer
    devenv
    tree-sitter # For generating definitions for some languages (i.e. Swift)
    mermaid-cli # For generating diagrams from a mermaid definition
    structurizr-cli # For generating diagrams from Structurizr DSL
    plantuml-c4 # PlantUML with c4 plugins
    swagger-codegen3 # To generate different output from a swagger spec, needs to be 3 to support OpenAPI 3

    otel-desktop-viewer
    otel-cli

    # postman
    # bruno
    mosquitto # MQTT broker and client
    # ngrok

    zenity # Utility to display dialog box from the command line.
    # kdePackages.kdialog # KDE utility to display dialog box from the command line.
  ];
}
