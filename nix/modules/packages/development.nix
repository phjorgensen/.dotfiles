{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    git-credential-oauth

    gcc
    nodejs
    rustup

    # Formatters
    stylua
    nodePackages.prettier

    # LSPs
    rust-analyzer
    lua-language-server # lua_ls?
    typescript
    tailwindcss-language-server # tailwindcss?
    nodePackages.typescript-language-server # tsserver?
    nodePackages.svelte-language-server # svelte?
    nodePackages.intelephense
    nil
    go

    postman
  ];
}
