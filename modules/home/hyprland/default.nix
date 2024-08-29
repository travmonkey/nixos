{ inputs, ... }:

{
  imports = [(import ./hyprland.nix)]
    ++[(import ./hypr/default.nix)]
    # ++[(import ./hypridle.nix)]
    ++[(import ./hyprlock.nix)];
}
