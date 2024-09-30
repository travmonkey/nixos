{ pkgs, inputs, ... }:

{

  imports = 
    [
      (./modules/home/default.nix)
      inputs.spicetify-nix.homeManagerModules.default
    ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "travis";
  home.homeDirectory = "/home/travis";

  home.file = {
    ".config/ags".source = ./unmanagedDots/ags;
    ".config/rofi".source = ./unmanagedDots/rofi;
  };

  gtk.enable = true;

  gtk.cursorTheme.package = pkgs.bibata-cursors;
  gtk.cursorTheme.name = "Bibata-Modern-Ice";

  gtk.theme.package = pkgs.adw-gtk3;
  gtk.theme.name = "adw-gtk3";

  gtk.iconTheme.package = pkgs.gruvbox-plus-icons;
  gtk.iconTheme.name = "Gruvbox-Plus-Dark";

  qt.enable = true;
  qt.platformTheme = "gtk";
  qt.style.name = "adwaita-dark";

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # teams
    qdirstat
    btop
    vivaldi
    bitwarden-desktop
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
    peazip
    zathura
    ranger
    qimgv
    heroic
    qbittorrent
    libreoffice
    kicad
    mpv
  ];

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/travis/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
