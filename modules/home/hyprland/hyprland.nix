{ inputs, pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprpicker
    rofi-wayland
    blueman
    networkmanagerapplet
    swww
    brightnessctl
    pamixer
    playerctl
    cliphist
  #   libsForQT5.qt5ct
  #   libsForQT5.qtstyleplugin-kvantum
  #   kdePackages.qt6ct
  #   kvantum
  ];
  systemd.user.targets.hyprland-session.Unit.Wants = [ "xdg-desktop-autostart.target" ];
  wayland.windowManager.hyprland = {
    package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;

    settings = {
      "$mod" = "ALT";

      env = [
        "HYPRCURSOR_THEME,Bibata-Modern-Ice"
        "HYPRCURSOR_SIZE,24"
        "CLUTTER_BACKEND,wayland"
        "GDK_BACKEND,wayland,x11"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_QPA_PLATFORMTHEME,qt5ct  "
        "QT_SCALE_FACTOR,1"
        "QT_AUTO_SCREEN_SCALE_FACTOR,1"
        # "QT_STYLE_OVERRIDE,kvantum"
        "QT_WAYLAND_DISABLE_WINDOWDECORATION,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"

        "NIXOS_OZONE_WL,1"

        "MOZ_ENABLE_WAYLAND,1"
      ];
    };
    plugins = [
      inputs.split-monitor-workspaces.packages.${pkgs.system}.split-monitor-workspaces
    ];
  };
}
