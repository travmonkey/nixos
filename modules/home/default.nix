{inputs, username, host, ... }:

{
  imports = 
    [(import ./hyprland)]
    ++[(import ./zsh.nix)]
    ++[(import ./mangohud.nix)]
    ++[(import ./kitty.nix)];
}
