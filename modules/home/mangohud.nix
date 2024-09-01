{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    mangohud
  ];

  programs.mangohud = {
    enable = true;

    settings = {
      fps_limit = 15;
    };
  };
}
