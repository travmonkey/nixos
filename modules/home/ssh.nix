{ ... }:

{
  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host severum
        HostName 10.0.1.235
        User aphelios
        Port 22

      Host gravitum
        HostName 10.0.1.120
        User aphelios
        Port 22
    '';
  };
}
