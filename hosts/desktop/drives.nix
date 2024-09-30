{ config, lib, pkgs, ... }:

{

  fileSystems."/mnt/nvme" = {
    device = "/dev/disk/by-uuid/6842a2b6-a0f1-4bf8-a7dc-8a4c23ed5f38";
    options = [
      "nofail"
    ];
  };
  # For mount.cifs, required unless domain name resolution is not needed.
  environment.systemPackages = [ pkgs.cifs-utils ];
  fileSystems."/mnt/moonlight" = {
    device = "//10.0.1.120/moonlight";
    fsType = "cifs";
    options = let
      # this line prevents hanging on network split
      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";

    in ["${automount_opts},credentials=/etc/nixos/smb-secrets,uid=1000,gid=100"];
  };
}
