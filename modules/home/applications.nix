{ pkgs, ... }:

{
  home.packages = with pkgs; [



    onlyoffice-bin
    font-manager
    discord-screenaudio
    vesktop
    gimp
    bemoji
    qdirstat
    btop
    vivaldi
    # bitwarden-desktop
    asdf-vm
    gamemode
    gamescope
    uptimed
    lazygit
    ripgrep
    fd
    librewolf
    nemo
    obs-studio
    peaz
    zathura
    qimgv
    heroic
    qbittorrent
    # kicad
    mpv
    blueberry
  ];
}
