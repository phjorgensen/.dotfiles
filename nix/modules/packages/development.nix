{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    # git-credential-oauth

    gcc
    nodejs
    rustup
    go
    nim

    # IDEs
    # zed-editor
    vscode

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
    typescript
    tailwindcss-language-server
    nodePackages.typescript-language-server
    nodePackages.svelte-language-server
    nodePackages.intelephense # PHP
    hyprls # Hyprland

    devcontainer

    # postman
    # bruno
    mosquitto # MQTT broker and client
    # ngrok
  ];
}
