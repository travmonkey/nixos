{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    mangohud
  ];

  programs.mangohud = {
    enable = true;

    settings = {
      # FPS related
      fps_limit = 0;
      frametime = true;
      frame_timing = 0;

      # CPU related
      cpu_temp = true;
      cpu_load_change = true;
      cpu_load_color = "b8bb26,fabd2f,fb4934";

      # GPU related
      gpu_temp = true;
      gpu_load_change = true;
      gpu_load_color = "b8bb26,fabd2f,fb4934";

      # RAM related
      ram = true;
    };
  };
}
