# Test another config sometime: https://github.com/sioodmy/dotfiles/tree/main
{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

    # home-manager = {
    #   url = "github:nix-community/home-manager";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
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
      # Add more configs, tut at youtube vid (13:40)
      # https://www.youtube.com/watch?v=a67Sv4Mbxmc
      default = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/default/configuration.nix
          # inputs.home-manager.nixosModules.default
        ];
      };
    };
  };
}
