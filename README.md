# Nix Configurations

This repo contains my system and user configurations using nix.

## Installation

```sh
gh repo clone V4G4X/nix_config ~/.nixpkgs
```

Once `nix` and `nix-darwin` are set up:

```sh
# For Home Manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
```

## Prerequisites

- [Nix](https://nixos.org/download.html)
- [nix-darwin](https://github.com/LnL7/nix-darwin/)

I typically found that following behind [this](https://github.com/MatthiasBenaets/nixos-config/blob/master/darwin.org) helps.

<!-- Restore a backed up dock to this location if it's bugging.
(Assuming you've backed it up before. Or else delete it and let MacOS build a new dock for you).

```sh
cp com.apple.dock.plist_bk Library/Preferences/com.apple.dock.plist
``` -->
