{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
 
  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };  
      in with pkgs; rec {
        # Development environment
        devShell = pkgs.mkShell {
          packages = [
            python312
          ];
        };
      }
    );
} 
