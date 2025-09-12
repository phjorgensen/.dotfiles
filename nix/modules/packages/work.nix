{ inputs, pkgs, ... }:
let
  teams-for-linux = pkgs.teams-for-linux.overrideAttrs (oldAttrs: rec {
    pname = "teams-for-linux";
    version = "2.1.0";

    src = pkgs.fetchFromGitHub {
      owner = "IsmaelMartinez";
      repo = "teams-for-linux";
      tag = "v${version}";
      hash = "sha256-lISDy721e3bfWMl56DlIxVKN2bW8Yonc5XSVL072OQk="; # v2.1.0
      # hash = "sha256-yjMhWP/AtjFKhbvSR4RzYD6vedc+OgqPU7bTWrNqtmo="; # v2.5.1
    };

    npmDepsHash = "sha256-QcjXJcEIi/sUJLUF+wMqhXyLYPgjZKK6n4ngyvrH9NA="; # v2.1.0
    # npmDepsHash = "sha256-wnr1MO0DN+2rKjmM75V3m1oOVczfDslOtULn/tLbRzM="; # v2.5.1

    npmDeps = pkgs.fetchNpmDeps {
      inherit src;
      name = "${pname}-${version}-npm-deps";
      hash = npmDepsHash;
    };
  });
in
{

  environment.systemPackages = with pkgs; [
    slack
    gitkraken
    thunderbird-128

    teams-for-linux
    # inputs.stable-nixpkgs.legacyPackages.${pkgs.system}.teams-for-linux
  ];

  services.flatpak.enable = true;
}
