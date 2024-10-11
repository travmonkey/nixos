{ pkgs, inputs, lib, config, ... }:

{
  options = {
    hyprland.enable = 
      lib.mkEnableOption "enable hyprland";
  };

  config = lib.mkIf config.hyprland.enable {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
      package = inputs.hyprland.packages.${pkgs.system}.hyprland;
      portalPackage =
        inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
    };
    xdg = {
      portal = {
        enable = true;
        xdgOpenUsePortal = true;
        config = {
          common.default = [ "gtk" ];
          hyprland.default = [ "gtk" "hyprland" ];
        };
        extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      };
    };
  };
}
