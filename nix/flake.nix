# Test another config sometime: https://github.com/sioodmy/dotfiles/tree/main
{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    alejandra = {
      url = "github:kamadorueda/alejandra/3.0.0";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ghostty = {
      url = "github:ghostty-org/ghostty";
      inputs.nixpkgs-stable.follows = "nixpkgs";
      inputs.nixpkgs-unstable.follows = "nixpkgs";
    };

    # wezterm = {
    #   url = "github:wez/wezterm?dir=nix";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = {
    nixpkgs,
    home-manager,
    alejandra,
    stylix,
    ghostty,
    # wezterm,
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
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.phj = import ../stow_home/home-manager/.config/home-manager/home.nix;
            home-manager.backupFileExtension = "backup";
          }
          {
            environment.systemPackages = [
              alejandra.defaultPackage.${system}
              ghostty.packages.${system}.default
            ];
          }
          # {
          #   nix.settings = {
          #     substituters = ["https://wezterm.cachix.org"];
          #     trusted-public-keys = ["wezterm.cachix.org-1:kAbhjYUC9qvblTE+s7S+kl5XM1zVa4skO+E/1IDWdH0="];
          #   };
          # }
          # {
          #   environment.systemPackages = [
          #     inputs.wezterm.packages.${system}.default
          #   ];
          # }
        ];
      };

      perWork = nixpkgs.lib.nixosSystem rec {
        specialArgs = {inherit inputs;};
        system = "x86_64-linux";

        modules = [
          ./hosts/perWork/configuration.nix
          stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.phj = import ../stow_home/home-manager/.config/home-manager/home.nix;
            home-manager.backupFileExtension = "backup";
          }
          {
            environment.systemPackages = [
              alejandra.defaultPackage.${system}
              ghostty.packages.${system}.default
            ];
          }
          # {
          #   nix.settings = {
          #     substituters = ["https://wezterm.cachix.org"];
          #     trusted-public-keys = ["wezterm.cachix.org-1:kAbhjYUC9qvblTE+s7S+kl5XM1zVa4skO+E/1IDWdH0="];
          #   };
          # }
          # {
          #   environment.systemPackages = [
          #     inputs.wezterm.packages.${system}.default
          #   ];
          # }
        ];
      };
    };
  };
}
