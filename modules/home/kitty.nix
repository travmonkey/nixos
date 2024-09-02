{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    kitty
  ];

  programs.kitty = lib.mkForce {
    enable = true;
    theme = "Gruvbox Material Dark Medium";

    font = {
      name = "MononokiNerdFont";
      size = 13.0;
    };

    settings = {
      confirm_os_window_close = "0";
      background_opacity = "0.95";
      underline_position = 3;
    };

  };
}