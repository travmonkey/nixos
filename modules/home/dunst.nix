{ pkgs, ... }:

{
  home.packages = with pkgs; [
    dunst
  ];

  programs.dunst = {
    enable = true;
    
    settings = {

    };
  };
}
