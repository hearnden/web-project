{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    nodejs_22
    # pnpm uses nodejs 22
    pnpm
  ];
}
