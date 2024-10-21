{ pkgs, ... }:

{
  home.packages = with pkgs; [
    swaynotificationcenter
    networkmanagerapplet
    rofi-wayland
    blueman
    swww
    brightnessctl
    pamixer
    playerctl

    xdg-user-dirs

    wl-clipboard
    jetbrains-mono
    font-manager
    material-design-icons
    material-symbols
  ];
}
