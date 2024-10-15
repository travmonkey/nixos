{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [ kitty ];

  programs.kitty = lib.mkForce {
    enable = true;
    themeFile = "GruvboxMaterialDarkMedium";

    font = {
      name = "MonofurNerdFont";
      size = 16.0;
    };

    settings = {
      confirm_os_window_close = "0";
      background_opacity = "1";
      underline_position = 3;
      enable_audio_bell = "no";

      font_features = "OpenType Italics";
    };

  };
}
