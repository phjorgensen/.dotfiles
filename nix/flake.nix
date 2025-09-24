{
  description = "The most awesomest NixOS configuration flake there ever was";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    stable-nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

    # Use specific commit for teams-for-linux
    # Issue: https://github.com/IsmaelMartinez/teams-for-linux/issues/1800
    # Introduced: https://github.com/NixOS/nixpkgs/commit/4f8978dc07418b89e80edbd7388e4e6578cb240d

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

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
          system = "x86_64-linux";
          specialArgs = { inherit inputs system; };
          modules = [ ./hosts/perCode/configuration.nix ];
        };

        perWork = nixpkgs.lib.nixosSystem rec {
          system = "x86_64-linux";
          specialArgs = { inherit inputs system; };
          modules = [ ./hosts/perWork/configuration.nix ];
        };
      };
    };
}
