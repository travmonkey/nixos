{ inputs, ... }:

{
  programs.hyprlock = {
    enable = true;

    settings = {
      background = {
        monitor = "";
        path = "/home/travis/Pictures/wallpapers/ciri_geralt.jpg";
        blur_size = "2";
        blur_passes = "2";
        noise = "0.0117";
        contrast = "1.3000";
        brightness = "0.8000";
        vibrancy = "0.2100";
        vibrancy_darkness = "0.0";
      };

      input-field = {
        monitor = "DP-1";
        size = "250, 50";
        outline_thickness = "3";
        dots_size = "0.26";
        dots_spacing = "0.64";
        dots_center = "true";
        outer_color = "rgb(177, 98, 134)";
        inner_color = "rgb(40, 40, 40)";
        font_color = "rgb(177, 98, 134)";
        fade_on_empty = "true";
        placeholder_text = "<i>Password...</i>";
        hide_input = "false";

        position = "0, 100";
        halign = "center";
        valign = "bottom";
      };

      label = [
        {
        monitor = "DP-1";
        text = ''cmd[update:1000] echo "<b><big> $(date +"%I:%M:%S $p") </big></b>"'';
        color = "rgb(177, 98, 134)";
        font_size = "64";
        font_family = "Mononoki Nerd Font 10";
        shadow_passes = "3";
        shadow_size = "4";

        position = "0, 16";
        halign = "center";
        valign = "center";
        }
        {
          monitor  = "DP-1";
          text = "Hey $USER";
          color = "rgb(177, 98, 134)";
          font_size = 18;
          font_family = "Monofur Nerd Font";
          position = "0, 30";
          halign = "center";
          valign = "bottom";

        }
      ];
    };
  };
}
