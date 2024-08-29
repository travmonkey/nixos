{ inputs, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    monitor = [
      ",preferred,auto,1"
      "DP-1, 3440x1440@144, 0x0, 1"
      "DP-2, 1920x1080@144, -1920x476, 1"
      "HDMI-A-1, 1920x1080@60, 3440x520, 1"
    ];
  };
}
