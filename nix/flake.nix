{
  description = "The most awesomest NixOS configuration flake there is";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Temprary fix, since Wireplumber is broken
    # Temp fix and issue discussion: https://github.com/NixOS/nixpkgs/issues/225743#issuecomment-3131013052
    # Fix: https://github.com/NixOS/nixpkgs/pull/427606
    older-pipewire.url = "github:NixOS/nixpkgs/2631b0b7abcea6e640ce31cd78ea58910d31e650";

    bootdev = {
      url = "./flakes/bootdev";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    komlesukker = {
      url = "github:phjorgensen/komlesukker";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # anyrun = {
    #   url = "github:anyrun-org/anyrun";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };

    # typy = {
    #   url = "github:Pazl27/typy-cli";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs =
    { nixpkgs, ... }@inputs:
    {
      system.autoUpgrade = {
        enable = true;
        flake = inputs.self.outPath;
        flags = [
          "--update-inputs"
          "nixpkgs"
          "-L"
        ];
        dates = "daily";
        randomizedDelaySec = "45min";
      };

      nixosConfigurations = {
        perCode = nixpkgs.lib.nixosSystem rec {
          specialArgs = { inherit inputs system; };
          system = "x86_64-linux";
          modules = [ ./hosts/perCode/configuration.nix ];
        };

        perWork = nixpkgs.lib.nixosSystem rec {
          specialArgs = { inherit inputs system; };
          system = "x86_64-linux";
          modules = [ ./hosts/perWork/configuration.nix ];
        };
      };
    };
}
