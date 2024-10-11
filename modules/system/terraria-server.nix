{ lib, config, ... }:

{
  options = {
    terraria-server.enable = lib.mkEnableOption "enable terraria server";
  };

  config = lib.mkIf config.terraria-server.enable {

    virtualisation.docker.enable = true;

    systemd.services.tml = {
      description = "Terraria Server";
      after = [ "network.target" "docker.service" ];
      wants = [ "docker.service" ];


      serviceConfig = {
        WorkingDirectory = "/home/aphelios/tModLoader";
        ExecStart = "/run/current-system/sw/bin/docker compose up";
        ExecStop = "/run/current-system/sw/bin/docker compose down";
        Restart = "always";
      };
    };
  };
}
