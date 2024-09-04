{ pkgs, lib, inputs, ... }:

{
  # imports = [ spicetify-nix.homeManagerModules.default ];

  programs.spicetify =
  let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in
  {
    enable = true;
    theme = spicePkgs.themes.catppuccin;
    colorScheme = "mocha";
  }
}
