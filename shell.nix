{ pkgs ? import <nixpkgs> {} }:
with pkgs;
mkShell rec {
    buildInputs = with pkgs; [
        zola
    ];
}
