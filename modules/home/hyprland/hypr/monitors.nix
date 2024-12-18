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
      "12, monitor:[DP-1], default:false"
      "13, monitor:[DP-1], default:false"
      "14, monitor:[DP-1], default:false"
      "15, monitor:[DP-1], default:false"
      "16, monitor:[DP-1], default:false"
      "17, monitor:[DP-1], default:false"
      "18, monitor:[DP-1], default:false"
      "19, monitor:[DP-1], default:false"
      "20, monitor:[DP-1], default:false"

      "1, monitor:[HDMI-A-1], default:true"
      "2, monitor:[HDMI-A-1], default:false"
      "3, monitor:[HDMI-A-1], default:false"
      "4, monitor:[HDMI-A-1], default:false"
      "5, monitor:[HDMI-A-1], default:false"
      "6, monitor:[HDMI-A-1], default:false"
      "7, monitor:[HDMI-A-1], default:false"
      "8, monitor:[HDMI-A-1], default:false"
      "9, monitor:[HDMI-A-1], default:false"
      "10, monitor:[HDMI-A-1], default:false"

      "21, monitor:[DP-2], default:true"
      "22, monitor:[DP-2], default:false"
      "23, monitor:[DP-2], default:false"
      "24, monitor:[DP-2], default:false"
      "25, monitor:[DP-2], default:false"
      "26, monitor:[DP-2], default:false"
      "27, monitor:[DP-2], default:false"
      "28, monitor:[DP-2], default:false"
      "29, monitor:[DP-2], default:false"
      "30, monitor:[DP-2], default:false"
    ];
  };
}
