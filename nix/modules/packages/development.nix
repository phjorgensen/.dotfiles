{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    # git-credential-oauth

    gcc
    nodejs
    rustup
    go
    nim
    sqlite

    pkg-config # helper tool used when compiling applications and libraries, it helps insert the correct compiler options on the command line

    # IDEs
    # zed-editor
    vscode
    android-studio

    # Formatters
    stylua
    prettierd

    # SDKs
    dotnetCorePackages.dotnet_9.sdk

    tree-sitter # For generating definitions for some languages (i.e. Swift)

    # LSPs
    lua-language-server
    marksman # Markdown
    nil # Nix
    gopls # Go
    rust-analyzer
    typescript
    tailwindcss-language-server
    nodePackages.typescript-language-server
    nodePackages.svelte-language-server
    nodePackages.intelephense # PHP
    hyprls # Hyprland
    sourcekit-lsp # Swift

    devcontainer

    # postman
    # bruno
    mosquitto # MQTT broker and client
    # ngrok

    zenity # Utility to display dialog box from the command line
  ];
}
