{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix.extraOptions = "experimental-features = nix-command flakes";

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    wget
    vim
    rar
    cmake
    ninja
    dfu-util
    nixpkgs-fmt
    ncdu
    tmux
    stow
    jq
    yq
    curl
  ];

  homebrew = (import ../homebrew);

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  # services.nix-daemon.enable = true; # Removed because deprecated
  # nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true; # default shell on catalina

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  # System Configurations

  fonts.packages = 
    let 
      fontNames = [ "terminess-ttf" "meslo-lg" "fira-code" "fira-mono" ];
    in
      builtins.map (name: pkgs.nerd-fonts.${name}) fontNames;
}
