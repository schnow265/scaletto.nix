{ nixpkgs, home-manager }:

{
  system,
  username,
  modules ? [],
  extraSpecialArgs ? {},
}:

home-manager.lib.homeManagerConfiguration {
  pkgs = import nixpkgs {
    inherit system;
  };

  inherit modules;

  extraSpecialArgs = {
    inherit username system;
  } // extraSpecialArgs;
}
