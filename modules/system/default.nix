{ ... }:

{
  imports = 
    [(import ./hyprland.nix)]
    ++[(import ./terraria-server.nix)]
    ++[(import ./gaming.nix)];
}
