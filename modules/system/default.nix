{ ... }:

{
  imports = 
    [(import ./hyprland.nix)]
    ++[(import ./gaming.nix)];
}
