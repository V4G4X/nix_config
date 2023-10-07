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
    nodejs
  ];

  homebrew = {
    enable = true;
    global.brewfile = true;
    casks = [ "mqttx" ];
    onActivation.cleanup = "uninstall";
  };

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true; # default shell on catalina
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;

  # System Configurations
  environment.loginShell = pkgs.zsh;
  fonts.fonts = [
    (pkgs.nerdfonts.override { fonts = [ "Meslo" "FiraCode" "FiraMono" ]; })
  ];

  system.defaults.NSGlobalDomain."com.apple.mouse.tapBehavior" = 1;
  system.defaults.NSGlobalDomain."com.apple.swipescrolldirection" = false;
  system.defaults.NSGlobalDomain.KeyRepeat = 1;
  system.defaults.dock.autohide = true;
  system.defaults.dock.static-only = true;
  system.defaults.dock.wvous-bl-corner = 2; # Bottom-Left hot corner is "Mission Control"
  system.defaults.finder.AppleShowAllExtensions = true;

  # Home Manager configurations
  imports = [ <home-manager/nix-darwin> ];

  users.users.varungawande = {
    name = "varungawande";
    home = "/Users/varungawande";
  };

  home-manager.users.varungawande = { pkgs, ... }: {

    programs = {
      fzf = {
        enable = true;
        enableZshIntegration = true;
      };
      direnv = {
        enable = true;
        enableZshIntegration = true;
      };
      gh = {
        enable = true;
        settings = {
          git_protocol = "ssh";
          prompt = "enabled";
        };
      };
      git = {
        enable = true;
        userEmail = "varun.gawande@espressif.com";
        userName = "Varun Gawande";
        extraConfig = {
          core.pager = "delta";
          interactive.diffFilter = "delta --color-only";
          delta = {
            navigate = true;
            light = false;
          };
        };
      };
      lazygit = {
        enable = true;
        settings = {
          gui.showFileTree = false;
          gui.nerdFontsVersion = "3";
          git.paging.pager = "delta --dark --paging=never";
          os.editPreset = "nvim";
        };
      };
      neovim = {
        enable = true;
        defaultEditor = true;
        vimAlias = true;
      };
    };

    home.packages = with pkgs; [
      bat
      tree
      zoxide
      ripgrep
      delta
      cargo
      htop
      speedtest-cli
      yt-dlp
    ];

    home.stateVersion = "22.05";
  };
}
