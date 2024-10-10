# Main configuration for server machine
{ pkgs, inputs, ... }:

{
  imports = 
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
    ];

  nixpkgs.config.allowUnfree = true;

  nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  users.users.aphelios = {                               
    isNormalUser = true;                                 
    description = "aphelios";                            
    extraGroups = [ "networkmanager" "wheel" "docker" ];          
    shell = pkgs.zsh;
  };

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "severum"; # Define your hostname.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  environment.sessionVariables = {
    FLAKE = "/home/aphelios/nixos";
  };

  virtualisation.docker.enable = true;

  # Enable ssh
  services.openssh.enable = true;

  programs.zsh.enable = true;

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 7d --keep 3";
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "aphelios" = import ./home.nix;
    };
    backupFileExtension = "backup";
  };

  security.sudo.wheelNeedsPassword = false;

  environment.systemPackages = with pkgs; [
    nh
    vim
    neovim
    git
    wget
    curl
  ];

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";                              
  };

  system.stateVersion = "24.05";
}
