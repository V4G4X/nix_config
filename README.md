# Nix Configurations

This repo contains my system and user configurations using nix (flakes).

## Installation

```sh
gh repo clone V4G4X/nix_config ~/.nixpkgs
```

## Usage

1. Build the flake:

   ```sh
   nix --extra-experimental-features 'nix-command flakes' run nix-darwin -- build --flake .
   ```

   OR

   ```sh
   nix build .#darwinConfiguration.Varun-MBP.system --extra-experimental-features "nix-command flakes"
   ```

2. Switch to the Darwin Configuration:

   ```sh
   ./result/sw/bin/darwin-rebuild switch --flake .  # install nix-darwin
   ```

Currently attempting to follow [this tutorial](https://xyno.space/post/nix-darwin-introduction).

<!-- Restore a backed up dock to this location if it's bugging.
(Assuming you've backed it up before. Or else delete it and let MacOS build a new dock for you).

```sh
cp com.apple.dock.plist_bk Library/Preferences/com.apple.dock.plist
``` -->
