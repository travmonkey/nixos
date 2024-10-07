{ pkgs, ... }:

{
  # Language servers and formatter for neovim
  # Attempting to keep this low in favor of using shell.nix, but it gets quite annoying
  # entering a shell.nix for frequent languages
  home.packages = with pkgs; [
    neovim

    # Language Servers
    lua-language-server # lua
    nodePackages_latest.bash-language-server # bash
    nodePackages_latest.typescript-language-server # ts/js
    nil # nix

    # Formatters
    stylua 
    biome
    isort
    shfmt
    mdformat
    nodePackages_latest.prettier

    # Linters
    eslint_d
    nodePackages_latest.jsonlint # bash
    shellcheck
  ];
}
