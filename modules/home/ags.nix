{ inputs, pkgs, ... }: {
  # add the home manager module
  imports = [ inputs.ags.homeManagerModules.default ];

  home.packages = with pkgs; [
    # Settings menus
    gnome-bluetooth
    gnome-control-center

    # Libraries
    libdbusmenu-gtk3
    libnotify
    coreutils
    cairomm
    gtk-layer-shell
    gvfs

    # Applications
    bc
    swappy
    wf-recorder
    grim
    slurp
    dart-sass
    hypridle
    hyprutils
    hyprlock
    wlogout
    hyprpicker
    anyrun
    fuzzel
    blueberry

    # Clipboard
    cliphist
    wl-clipboard

    # Tools
    upower
    ydotool
    ripgrep
    jq
    axel
    curl
    wget
    tinyxml-2
    gtkmm3
    gtksourceviewmm
    ddcutil
    xdg-user-dirs
    pywal
    dconf
    yad

    # JS stuff
    nodejs_22
    typescript
    gjs

    # Fonts
    fontconfig
    jetbrains-mono
    material-design-icons
    material-symbols
  ];

  programs.ags = {
    enable = true;

    # Specify this directory to where the config is
    # configDir = ../ags;

    # additional packages to add to gj's runtime
    extraPackages = with pkgs; [ gtksourceview webkitgtk accountsservice ];
  };
}
