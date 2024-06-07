{
  description = "Flake for teleprobe";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in
    {

      formatter.x86_64-linux = pkgs.nixfmt-rfc-style;

      overlays.default = final: prev: { teleprobe = final.callPackage ./default.nix { }; };

      packages.x86_64-linux = rec {
        teleprobe = pkgs.callPackage ./default.nix { };
        default = teleprobe;
      };
    };
}
