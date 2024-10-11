{ inputs, ... }:

{
  services.hypridle = {
    enable = true;

    settings = {
      general = {
        lock_cmd =
          "pidof hyprlock || hyprlock"; # avoid starting multiple hyprlock instances.
        before_sleep_cmd = "loginctl lock-session"; # lock before suspend.
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };

      listener = [{
        timeout = "300"; # 5min
        on-timeout =
          "loginctl lock-session"; # lock screen when timeout has passed
      }
      # {
      #   timeout = "15";                                 # 5.5min
      #   on-timeout = "hyprctl dispatch dpms off";       # screen off when timeout has passed
      #   on-resume = "hyprctl dispatch dpms on";
      # }
        ];
    };
  };
}
