# My Current, Maintained, NixOs configs

# 󰋽  Information
Compositor: Hyprland  
Terminal: Kitty  
Shell: ZSH  
Bar and widgets: Using a modified [end-4](https://github.com/end-4/dots-hyprland) ags config  
Wallpaper: swww  
App Launcher: Rofi  
File Explorer: Ranger + Nemo  
Image Viewer: qimgv  
Audio: Pipewire + Wireplumber  

#    Requirements
- You must be on NixOS
- Flakes must be enabled

## 󰇚 Install

Ensure git & vim are installed if they aren't already
Either add them to your current config
```nix
environment.systemPackages = {
    pkgs.git
    pkgs.vim
}
```
Or you can temporarily add them with nix-shell (note: do NOT use nix-env to install packages)
```nix
nix-shell -p git vim
```

Clone this repository
```sh 
mkdir -p ~/repos
cd repos
git clone https://github.com/travmonkey/nixos.git
cd nixos
```

Enter the repo and build a directory and hardware config for you
```sh
cp -r hosts/default hosts/<your-hostname>
nixos-generate-config --show-hardware-config > hosts/<your-hostname>/hardware-configuration.nix
```

### *Important* - Quick Edits to the config

Make sure that you edit your configuration.nix to remove the luks decryption
```nix
# luks
  boot.initrd.luks.devices = {
    crypted = {
      device = "/dev/disk/by-uuid/944855ab-af98-457b-8ad7-b38f1d58a168";
      preLVM = true;
    };
  };
```
It is also a good idea to change all instances of "travis" to your name

### Switch to flake

```sh
# Enable flakes if they are not enabled
NIX_CONFIG="experimental-features = nix-command flakes"
sudo nixos-rebuild switch --flake .#<hostname>
```

This should switch you into my flake and backup your dotfiles if they aren't  
managed by home-manager already.

Look into modules/home/hyprland/hypr/keybinds.nix for my keybinds until I create a cheat-sheet.

Hope you enjoy!
