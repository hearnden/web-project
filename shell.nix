{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    # List packages here.
    # Example: nodejs-18_x yarn
  ];
}
