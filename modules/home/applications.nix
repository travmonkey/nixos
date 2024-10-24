{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # File management
    nemo
    peazip
    qdirstat
    qbittorrent

    # File viewing / editing
    onlyoffice-bin
    zathura
    gimp
    mpv
    qimgv

    # Settings applications
    blueberry
    via
    openrgb-with-all-plugins

    # Fonts
    font-manager
    bemoji

    # Games
    heroic
    discord-screenaudio
    vesktop

    # Development
    btop
    lazygit
    # kicad

    # Other
    # bitwarden-desktop
    librewolf
    obs-studio
    teams-for-linux
    stellarium
  ];
}
