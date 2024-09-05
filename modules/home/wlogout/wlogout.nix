{ pkgs, lib, inputs, ... }:

{
  home.packages = with pkgs; [
    wlogout
  ];

  programs.wlogout = {
    enable = true;

    actions = [
      {
        label = "lock";
        action = "hyprlock";
        text = "Lock";
        keybind = "l";
      }
    ];
  };
}
