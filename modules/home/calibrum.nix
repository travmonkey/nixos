{ ... }:

{
  imports = 
    [(import ./hyprland)]
    ++[(import ./zsh.nix)]
    ++[(import ./wlogout/wlogout.nix)]
    ++[(import ./spicetify.nix)]
    ++[(import ./ssh.nix)]
    # ++[(import ./dunst.nix)]
    ++[(import ./waybar.nix)]
    ++[(import ./mangohud.nix)]
    ++[(import ./ranger.nix)]
    ++[(import ./neovim.nix)]
    # ++[(import ./stylix.nix)]
    ++[(import ./ags.nix)]
    ++[(import ./kitty.nix)];
}
