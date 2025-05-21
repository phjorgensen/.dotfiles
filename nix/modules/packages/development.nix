{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git

    # Languages
    gcc
    rustup
    go
    nodejs
    typescript
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

    # LSPs
    lua-language-server
    marksman # Markdown
    nil # Nix
    gopls # Go
    rust-analyzer
    tailwindcss-language-server
    nodePackages.typescript-language-server
    svelte-language-server
    nodePackages.intelephense # PHP
    hyprls # Hyprland
    sourcekit-lsp # Swift

    # Debuggers
    lldb

    devcontainer
    tree-sitter # For generating definitions for some languages (i.e. Swift)

    # postman
    # bruno
    mosquitto # MQTT broker and client
    # ngrok

    zenity # Utility to display dialog box from the command line
  ];
}
