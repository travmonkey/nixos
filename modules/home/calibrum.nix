{ ... }:

{
  imports = 
    [(import ./hyprland)]
    ++[(import ./zsh.nix)]
    ++[(import ./wlogout/wlogout.nix)]
    ++[(import ./spicetify.nix)]
    ++[(import ./ssh.nix)]
    ++[(import ./waybar.nix)]
    ++[(import ./mangohud.nix)]
    ++[(import ./ranger.nix)]
    ++[(import ./neovim.nix)]
    ++[(import ./applications.nix)]
    ++[(import ./utilities.nix)]
    ++[(import ./kitty.nix)];
}
