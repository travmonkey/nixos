{ pkgs, inputs, lib, config, ... }:

{
  options = { gaming.enable = lib.mkEnableOption "enable gaming tools"; };

  config = lib.mkIf config.gaming.enable {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall =
        true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall =
        true; # Open ports in the firewall for Source Dedicated Server
      localNetworkGameTransfers.openFirewall =
        true; # Open ports in the firewall for Steam Local Network Game Transfers
      gamescopeSession.enable = true;
    };
    # Setting up steam and graphics drivers
    hardware.graphics.enable = true;
    services.xserver.enable = true;
    services.xserver.videoDrivers = [ "amdgpu" ];

    hardware.graphics.extraPackages = with pkgs; [
      # rocm-opencl-icd
      # rocm-opencl-runtime
      mesa.drivers
    ];

    services.hardware.openrgb.enable = true;
  };
}

