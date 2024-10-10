{ ... }:

{
  imports = 
    ++[(import ./zsh.nix)]
    ++[(import ./ranger.nix)]
    ++[(import ./neovim.nix)]
}
