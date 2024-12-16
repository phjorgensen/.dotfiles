{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    git-credential-oauth

    gcc
    nodejs
    rustup
    go

    # Formatters
    stylua
    prettierd

    # LSPs
    lua-language-server
    marksman # Markdown LSP
    nil # Nix LSP
    gopls
    rust-analyzer
    typescript
    tailwindcss-language-server
    nodePackages.typescript-language-server
    nodePackages.svelte-language-server
    nodePackages.intelephense # PHP LSP

    devcontainer

    postman
    bruno
  ];
}
