{ pkgs, ... }:

{
  home.packages = with pkgs; [
    dunst
  ];

  services.dunst = {
    enable = false;
    
    settings = {
      global = {
        monitor = 1;

        width = 300;
        height = 300;

        origin = "top-right";

        frame_color = "#d65d0e";

        offset = "16x30";

        corner_radius = 16;

        frame_width = 1;

        background = "#282828";
        foreground = "#ebdbb2";
      };
    };
  };
}
