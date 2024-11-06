{ inputs, pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    monitor = [
      ",preferred,auto,1"
      "DP-1, 3440x1440@144, 0x0, 1"
      "DP-2, 1920x1080@144, -1920x476, 1"
      "HDMI-A-1, 1920x1080@60, 3440x520, 1"
    ];
    workspace = [
      "11, monitor:[DP-1], default:true"
      "12, monitor:[DP-1], default:true"
      "13, monitor:[DP-1], default:true"
      "14, monitor:[DP-1], default:true"
      "15, monitor:[DP-1], default:true"
      "16, monitor:[DP-1], default:true"
      "17, monitor:[DP-1], default:true"
      "18, monitor:[DP-1], default:true"
      "19, monitor:[DP-1], default:true"
      "20, monitor:[DP-1], default:true"

      "1, monitor:[HDMI-A-1], default:true"
      "2, monitor:[HDMI-A-1], default:true"
      "3, monitor:[HDMI-A-1], default:true"
      "4, monitor:[HDMI-A-1], default:true"
      "5, monitor:[HDMI-A-1], default:true"
      "6, monitor:[HDMI-A-1], default:true"
      "7, monitor:[HDMI-A-1], default:true"
      "8, monitor:[HDMI-A-1], default:true"
      "9, monitor:[HDMI-A-1], default:true"
      "10, monitor:[HDMI-A-1], default:true"

      "21, monitor:[DP-2], default:true"
      "22, monitor:[DP-2], default:true"
      "23, monitor:[DP-2], default:true"
      "24, monitor:[DP-2], default:true"
      "25, monitor:[DP-2], default:true"
      "26, monitor:[DP-2], default:true"
      "27, monitor:[DP-2], default:true"
      "28, monitor:[DP-2], default:true"
      "29, monitor:[DP-2], default:true"
      "30, monitor:[DP-2], default:true"
    ];
  };
}
