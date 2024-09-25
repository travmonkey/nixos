{ ... }:

{
  imports = 
    [(import ./hyprland)]
    ++[(import ./zsh.nix)]
    ++[(import ./wlogout/wlogout.nix)]
    ++[(import ./spicetify.nix)]
    ++[(import ./dunst.nix)]
    ++[(import ./waybar.nix)]
    ++[(import ./mangohud.nix)]
    ++[(import ./btop.nix)]
    # ++[(import ./sddm-theme.nix)]
    ++[(import ./ags/ags.nix)]
    ++[(import ./kitty.nix)];
}
