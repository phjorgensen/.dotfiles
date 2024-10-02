# Test another config sometime: https://github.com/sioodmy/dotfiles/tree/main
{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";
    alejandra.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    alejandra,
    home-manager,
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
      # Add more configs, tut at youtube vid (13:40)
      # https://www.youtube.com/watch?v=a67Sv4Mbxmc
      perCode = nixpkgs.lib.nixosSystem rec {
        specialArgs = {inherit inputs;};
        system = "x86_64-linux";

        modules = [
          ./hosts/perCode/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.phj = import ../stow_home/home-manager/.config/home-manager/home.nix;
          }
          {
            environment.systemPackages = [alejandra.defaultPackage.${system}];
          }
        ];
      };

      perWork = nixpkgs.lib.nixosSystem rec {
        specialArgs = {inherit inputs;};
        system = "x86_64-linux";

        modules = [
          ./hosts/perWork/configuration.nix
          {
            environment.systemPackages = [alejandra.defaultPackage.${system}];
          }
        ];
      };
    };
  };
}
