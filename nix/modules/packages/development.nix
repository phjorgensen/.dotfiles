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
    nodePackages.typescript-language-server # tsserver?
    nodePackages.svelte-language-server # svelte?
    nodePackages.tailwindcss # tailwindcss?

    postman
  ];
}
