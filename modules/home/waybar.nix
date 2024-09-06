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

          format-icons = {
            "1" = "一";
            "2" = "二";
            "3" = "三";
            "4" = "四";
            "5" = "五";
            "6" = "六";
            "7" = "七";
            "8" = "八";
            "9" = "九";
            "10" = "十";
            "11" = "一";
            "12" = "二";
            "13" = "三";
            "14" = "四";
            "15" = "五";
            "16" = "六";
            "17" = "七";
            "18" = "八";
            "19" = "九";
            "20" = "十";
            "21" = "一";
            "22" = "二";
            "23" = "三";
            "24" = "四";
            "25" = "五";
            "26" = "六";
            "27" = "七";
            "28" = "八";
            "29" = "九";
            "30" = "十";
          };
        };

        "custom/logo" = {
          format = " ";
          exec = "echo ; echo 󰟡 power // blur";
          on-click = "/home/travis/nixos/scripts/hypr/Wlogout.sh";
          interval = "86400";
          tooltip = true;
        };

        "idle_inhibitor" = {
          format = "<span font='12'>{icon} </span>";
          format-icons = {
            activated ="󰈈";
            deactivated ="󰈉";
          };
        };

        "clock" = {
          format = "<span color = '#458588'>{:%A, %B %d - %I:%M:%S %p}</span>";
          interval = 1;
          tooltip-format = "\n<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          calendar-weeks-pos = "right";
          today-format = "<span color='#7645AD'><b><u>{}</u></b></span>";
          format-calendar = "<span color='#aeaeae'><b>{}</b></span>";
          format-calendar-weeks = "<span color='#aeaeae'><b>W{:%V}</b></span>";
          format-calendar-weekdays = "<span color='#aeaeae'><b>{}</b></span>";
        };

        "disk" = {
          interval = 30;
          format = "  {percentage_used}%";
          path = "/";
        };

        "memory" = {
          format = "  {percentage}%";
        };
        
        "cpu" = {
          interval = 1;
          format = "  {usage}%";
          min-length = 6;
          max-length = 6;
          format-icons = ["▁" "▂" "▃" "▄" "▅" "▆" "▇" "█"];
        };

        "temperature" = {
          format = " {temperatureC}°C";
          format-critical = " {temperatureC}°C";
          interval = 1;
          critical-threshold = 80;
          on-click = "foot btop";
        };

        "pulseaudio" = {
          format = "{volume}% {icon}";
          format-bluetooth ="󰂰";
          format-muted = "<span font='12'></span>";
          format-icons = {
            headphones = "";
            bluetooth = "󰥰 ";
            handsfree = "";
            headset = "󱡬";
            phone = "";
            portable = "";
            car = "";
            default = ["" " " " "];
          };
        };

        "tray" = {
          icon-size = 14;
          spacing = 1;
        };

        "hyprland/window" = {
          format = "( {class} )";
          rewrite = {
            "(.*) - Mozilla Firefox" = "🌎 $1";
            "(.*) - zsh" = "> [$1]";
          };
        };
      };
    };

    style = ''
      * {
        border: none;
        font-size: 14px;
        font-family: "MononokiNerdFond" ;
        min-height: 18px;
      }

      window#waybar {
        background: transparent;
        margin: 20px;
       }

      #custom-logo {
        padding: 1px 8px 0 10px;
      }

      #workspaces button {
        background: #282828;
        padding: 1px 4px;
        margin: 2px;
        border-radius: 20px;
        border-style: solid;
        border-width: 1px;
        border-color: #ebdbb2;
        transition: all 0.3s ease-in-out;
      }

      #workspaces button.empty {
        background: #282828;
        padding: 1px 4px;
        margin: 2px;
        border-radius: 20px;
        border-style: solid;
        border-color: #282828;
      }

      #workspaces button.visible {
        padding: 1px 16px;
        border-color: #d65d0e;
        transition: all 0.3s ease-in-out;
        color: #d65d0e;
      }

      .modules-right {
        padding-left: 5px;
        border-radius: 20px;
        border-style: solid;
        border-width: 1px;
        border-color: #d65d0e;
        margin-top: 8px;
        margin-right: 8px;
        background: #282828;
      }

      .modules-center {
        padding: 0 15px;
        margin-top: 8px;
        border-radius: 20px;
        border-style: solid;
        border-width: 1px;
        border-color: #d65d0e;
        background: #282828;
      }

      .modules-left {
        border-radius: 20px;
        border-style: solid;
        border-width: 1px;
        border-color: #d65d0e;
        margin-top: 8px;
        margin-left: 8px;
        background: #282828;
      }

      #battery,
      #custom-clipboard,
      #custom-colorpicker,
      #custom-powerDraw,
      #bluetooth,
      #pulseaudio,
      #network,
      #disk,
      #memory,
      #backlight,
      #cpu,
      #temperature,
      #custom-weather,
      #idle_inhibitor,
      #jack,
      #tray,
      #window,
      #clock {
        background-color: #282828;
        border-radius: 20px;
        padding: 0 5px;
        color: #ebdbb2;
      }

      #custom-weather,
      #disk,
      #cpu,
      #memory,
      #temperature,
      #window {
        padding-top: 1px;
      }

      #custom-weather {
        color: #fabd2f;
      }

      #pulseaudio {
        padding-top: 3px;
      }

      #disk {
        color: #8ec07c;
      }

      #memory {
        padding-right: 0px;
        color: #83a598;
      }

      #cpu {
        padding-right: 0px;
        color: #b16286;
      }

      #clock {
        padding-left: 0px;
        padding-top: 3px;
        color: #b16286;
      }

      #network {
        padding-right: 8px;
      }

      #window {
        padding-right: 8px;
      }

      #temperature {
        color: #83a598;
      }

      #temperature.critical,
      #pulseaudio.muted {
        color: #cc241d;
        padding-top: 0;
      }

      #clock{
        color: #5fd1fa;
      }

      #battery.charging {
        color: #ffffff;
        background-color: #26A65B;
      }

      #battery.warning:not(.charging) {
        background-color: #ffbe61;
        color: black;
      }

      #battery.critical:not(.charging) {
        background-color: #f53c3c;
        color: #ffffff;
        animation-name: blink;
        animation-duration: 0.5s;
        animation-timing-function: linear;
        animation-iteration-count: infinite;
        animation-direction: alternate;
      }

      @keyframes blink {
        to {
          background-color: #ffffff;
          color: #000000;
        }
      }
    '';
  };
}
