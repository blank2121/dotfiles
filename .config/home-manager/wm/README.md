# Window manager info!

### common info
there is a `file.nix` that is the same name as the folder. That one contains the apps and or clis that are specific to that server i.e. wayland or x11. If you want to only use the apps for one of the given servers but not the setup for the window manager itself, then just use `wayland.nix` or `x11.nix`. If you do want to use both, then import the `hyprland.nix`, `xmonad.nix`, etc. and know that they already include the apps within them.
