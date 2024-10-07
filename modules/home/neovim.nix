{ pkgs, ... }:

{
  # Language servers and formatter for neovim
  home.packages = with pkgs; [
    neovim

    # Language Servers
    llvmPackages_12.libcxxClang # c/c++
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

    # Linters
    eslint_d
    nodePackages_latest.jsonlint # bash
    shellcheck
  ];
}
