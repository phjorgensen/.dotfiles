{
  description = "NixOS config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    alejandra = {
      url = "github:kamadorueda/alejandra/3.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    anyrun = {
      url = "github:anyrun-org/anyrun";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # typy = {
    #   url = "github:Pazl27/typy-cli";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = {
    nixpkgs,
    alejandra,
    stylix,
    anyrun,
    # typy,
    ...
  } @ inputs: {
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
        specialArgs = {inherit inputs;};
        system = "x86_64-linux";

        modules = [
          ./hosts/perCode/configuration.nix
          stylix.nixosModules.stylix
          {
            environment.systemPackages = [
              alejandra.defaultPackage.${system}
              anyrun.packages.${system}.anyrun
              # typy.packages.${system}.default
            ];
          }
        ];
      };

      perWork = nixpkgs.lib.nixosSystem rec {
        specialArgs = {inherit inputs;};
        system = "x86_64-linux";

        modules = [
          ./hosts/perWork/configuration.nix
          stylix.nixosModules.stylix
          {
            environment.systemPackages = [
              alejandra.defaultPackage.${system}
              anyrun.packages.${system}.anyrun
              # typy.packages.${system}.default
            ];
          }
        ];
      };
    };
  };
}
