{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    bc
    oh-my-zsh
    eza
    pokemon-colorscripts-mac
    fzf
  ];

  # Add the folder for custom themes
  home.file.".zshrc".text = ''
    export ZSH_CUSTOM="${config.home.homeDirectory}/.oh-my-zsh/custom"
  '';

  programs.zsh = {
    enable = true;

    shellAliases = {
      # update and rebuild commands
      update = "nix flake update /home/travis/nixos" ;
      rebuild = "sudo nixos-rebuild switch --flake /home/travis/nixos/#default";
      # eza for ls replacement:
      lr = "eza -l --git --no-filesize --icons=always --no-time";
      lt = "eza -l --git --no-filesize --icons=always --no-time --tree --level=2";
      ata = "eza -l --git --no-filesize --icons=always --no-time --tree --level=2 -all";
      att = "eza -l --git --no-filesize --icons=always --no-time --tree --level=3";
      alta = "eza -l --git --no-filesize --icons=always --no-time --tree --level=3 -all";
      ls = "eza --git";
      la = "eza -l --git --no-filesize --icons=always --no-time --all";

      # opening nvim instead of vim
      vim = "nvim";
      vi = "nvim";
      v = "nvim";
    };

    # Extra commands
    initExtra = ''
      if [[ "$(tty)" == "/dev/tty1" ]]
      then
        Hyprland
      fi

      pokemon-colorscripts -r

      
      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'
    '';

    plugins = [ 
      # "git"
      {
        name = "zsh-autosuggestions";
        file = "zsh-autosuggestions.zsh";
        src = builtins.fetchGit {
          url = "https://github.com/zsh-users/zsh-autosuggestions";
          rev = "a411ef3e0992d4839f0732ebeb9823024afaaaa8";
        };
      }
      {
        name = "zsh-syntax-highlighting";
        file = "zsh-syntax-highlighting.zsh";
        src = builtins.fetchGit {
          url = "https://github.com/zsh-users/zsh-syntax-highlighting/";
          rev = "932e29a0c75411cb618f02995b66c0a4a25699bc";
        }; 
      }
    ];

    oh-my-zsh = {
      enable = true;
      theme = "passion";
    };
  };
}
