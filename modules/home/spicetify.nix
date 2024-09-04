{ config, pkgs, lib, spicetify-nix, ... }:

let
  spicePkgs = inputs.spicetify-nix.packages.${pkgs.system}.default;
in 
{
  imports = [ spicetify-nix.homeManagerModule ];

  programs.spicetify = 
  {
      enable = true;
      theme = spicePkgs.themes.catppuccin;
      colorScheme = "mocha";
  };
}
