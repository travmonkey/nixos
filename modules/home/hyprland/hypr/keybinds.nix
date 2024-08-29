{ inputs, ... }:

{
  wayland.windowManager.hyprland.settings = {
    "$scripts" = "/home/travis/nixos/scripts/hypr";
    # main applications
    "$terminal" = "kitty";
    "$files" = "kitty -e ranger";
    "$task_manager" = "kitty -e btop";

    bind = [
      ## MOVEMENT
      # Move focus binds ->
      "$mod, left, movefocus, l"
      "$mod, h, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, l, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, k, movefocus, u"
      "$mod, down, movefocus, d"
      "$mod, j, movefocus, d"
      # Move window binds ->
      "$mod SHIFT, left, movewindow, l"
      "$mod SHIFT, h, movewindow, l"
      "$mod SHIFT, right, movewindow, r"
      "$mod SHIFT, l, movewindow, r"
      "$mod SHIFT, up, movewindow, u"
      "$mod SHIFT, k, movewindow, u"
      "$mod SHIFT, down, movewindow, d"
      "$mod SHIFT, j, movewindow, d"
      # Move only cursor focus to monitor
      "$mod CTRL, 1, focusmonitor, DP-2"
      "$mod CTRL, 2, focusmonitor, DP-1"
      "$mod CTRL, 3, focusmonitor, HDMI-A-1"

      ## WORKSPACES
      # Switch to workspace
      "$mod, 1, split-workspace, 1"
      "$mod, 2, split-workspace, 2"
      "$mod, 3, split-workspace, 3"
      "$mod, 4, split-workspace, 4"
      "$mod, 5, split-workspace, 5"
      "$mod, 6, split-workspace, 6"
      "$mod, 7, split-workspace, 7"
      "$mod, 8, split-workspace, 8"
      "$mod, 9, split-workspace, 9"
      "$mod, 0, split-workspace, 10"
      # Switch to workspace and bring window
      "$mod SHIFT, 1, split-movetoworkspace, 1"
      "$mod SHIFT, 2, split-movetoworkspace, 2"
      "$mod SHIFT, 3, split-movetoworkspace, 3"
      "$mod SHIFT, 4, split-movetoworkspace, 4"
      "$mod SHIFT, 5, split-movetoworkspace, 5"
      "$mod SHIFT, 6, split-movetoworkspace, 6"
      "$mod SHIFT, 7, split-movetoworkspace, 7"
      "$mod SHIFT, 8, split-movetoworkspace, 8"
      "$mod SHIFT, 9, split-movetoworkspace, 9"
      "$mod SHIFT, 0, split-movetoworkspace, 10"
      # Cycle through workspaces
      "$mod SHIFT, bracketleft, movetoworkspace, -1"
      "$mod SHIFT, bracketright, movetoworkspace, +1"
      "$mod, bracketleft, workspace, -1"
      "$mod, bracketright, workspace, +1"
      "$mod, mouse_down, workspace, m-1"
      "$mod, mouse_up, workspace, m+1"
      "$mod, period, workspace, m+1"
      "$mod, comma, workspace, m-1"
      # Move to gaming workspace
      "$mod, G, workspace, 20"

      ## STANDARD CONTROLS
      # fullscreen
      "$mod, F, fullscreen"
      # close window
      "$mod, C, killactive"
      "$mod SHIFT, C, closewindow"
      # floating
      "$mod, Z, togglefloating,"
      "$mod SHIFT, Z, exec, hyprctl dispatch workspaceopt allfloat"
      # split
      "$mod, S, togglesplit"
      # rofi
      "$mod, R, exec, pkill rofi || rofi -show drun -modi drun,filebrowser,run,window"
      "$mod, SPACE, exec, pkill rofi || rofi -show drun -modi drun,filebrowser,run,window"

      ## APPLICATIONS
      # browser
      "$mod SHIFT, Q, exec, librewolf"
      # discord
      "$mod SHIFT, E, exec, vesktop"
      # steam
      "ALT, S, exec, steam"
      # terminal
      "$mod, Q, exec, $terminal"
      # files
      "$mod, E, exec, $files"
      # task manager
      "CTRL ALT, T, exec, $taskmanager"
      # Pavu
      "$mod, B, exec, myxer"

      # Screenshot
      "$mod SHIFT, S, exec, $scripts/scripts/ScreenShot.sh --swappy"

      # Select Wallpaper
      "$mod, W, exec, $scripts/UserScripts/WallpaperSelect.sh"

      # Clipboard Manager
      "$mod SHIFT, V, exec, $scripts/scripts/ClipManager.sh"

      # Refresh waybar
      "$mod ALT, R, exec, $scripts/scripts/Refresh.sh"
      

    ];
    bindm = [
      # Mouse keybinds
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
    binde = [
      # Resize window binds ->
      "$mod CTRL, left, resizeactive,-50 0"
      "$mod CTRL, h, resizeactive,-50 0"
      "$mod CTRL, right, resizeactive,50 0"
      "$mod CTRL, l, resizeactive,50 0"
      "$mod CTRL, up, resizeactive,0 -50"
      "$mod CTRL, k, resizeactive,0 -50"
      "$mod CTRL, down, resizeactive,0 50"
      "$mod CTRL, j, resizeactive,0 50"
    ];
  };

}

