{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    git
    git-credential-oauth

    gcc
    nodejs
    rustup

    stylua
    nodePackages.prettier

    postman
  ];
}
