{ pkgs, ... }:

{
  home.packages = with pkgs; [
    btop
  ];

  programs.btop.settings = {
    color_theme = "Gruvbox";
  };
}

