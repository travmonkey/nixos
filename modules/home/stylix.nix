{ pkgs, ... }:

{
  stylix.enable = true;
  stylix.image = ~/Pictures/wallpapers/rayquaza.png;

  # stylix.polarity = "dark";

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";

  stylix.target.hyprland.enable = false;
}
