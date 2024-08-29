{inputs, username, host, ... }:

{
  imports = 
    [(import ./hyprland)]
    ++[(import ./zsh.nix)];
}
