{ pkgs, ... }:

{
  home.packages = with pkgs; [
    waybar
  ];


  programs.waybar = {
    enable = true;

    settings = {

      # General settings
      mainBar = {
        layer = "top";
        position = "top";
        reload_style_on_change = true;
      };

      # Layour of the bar
      modules-left = [ "custom/logo" "clock" "disk" "memory" "cpu" "temperature" "custom/powerDraw" "hyprland/window" ];
      modules-center = [ "hyprland/workspaces" ];
      modules-right = [ "tray" "idle_inhibitor" "custom/colorpicker" "pulseaudio" "network" ];

      # Module config
      "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = false;
        format = "{icon}";
        persistent-workspaces = [
          "'HDMI-A-1': [1, 2, 3, 4, 5]"
          "'DP-1': [11, 12, 13, 14, 15]"
          "'DP-2': [21, 22, 23, 24, 25]"
        ];
        # format-icons = {
        #   "1": "一",
        #   "2": "二",
        #   "3": "三",
        #   "4": "四",
        #   "5": "五",
        #   "6": "六",
        #   "7": "七",
        #   "8": "八",
        #   "9": "九",
        #   "10": "十",
        #   "11": "一",
        #   "12": "二",
        #   "13": "三",
        #   "14": "四",
        #   "15": "五",
        #   "16": "六",
        #   "17": "七",
        #   "18": "八",
        #   "19": "九",
        #   "20": "十",
        #   "21": "一",
        #   "22": "二",
        #   "23": "三",
        #   "24": "四",
        #   "25": "五",
        #   "26": "六",
        #   "27": "七",
        #   "28": "八",
        #   "29": "九",
        #   "30": "十",
        # };
      };
    };
  };
}
