{ ... }:

{
  imports = [(import ./keybinds.nix)]
    ++[(import ./settings.nix)]
    ++[(import ./startup.nix)]
    ++[(import ./monitors.nix)]
    ++[(import ./window-rules.nix)];
}
