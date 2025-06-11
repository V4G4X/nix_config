{
  description = "Nix Darwin Configuration in a flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, darwin, ... }:
  let
    username = "varungawande";
  in {
    darwinConfigurations."Varuns-MacBook-Pro" = darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      specialArgs = { inherit username; };
      modules = [
        ./modules/nix-darwin/darwin-configuration.nix
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          users.users.${username} = {
            name = username;
            home = "/Users/${username}";
          };
          home-manager.users.${username} = import ./modules/home-manager;
        }
      ];
    };

  };
}
