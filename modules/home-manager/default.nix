{ pkgs, ... }: {

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
        git.log.showGraph = "always";
        git.log.showWholeGraph = false;
        os.editPreset = "vscode";
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
}
