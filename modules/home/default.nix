{inputs, username, host, ... }:

{
  imports = 
    [(import ./hyprland)]
    ++[(import ./zsh.nix)]
    ++[(import ./ags/ags.nix)]
    ++[(import ./kitty.nix)];
}
