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
    };
    lazygit = {
      enable = true;
      settings = {
        gui.showFileTree = false;
        gui.nerdFontsVersion = "3";
        git.paging.pager = "delta --dark --paging=never";
        git.log.showGraph = "always";
        git.log.showWholeGraph = false;
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
    btop
    cargo
    delta
    deno
    htop
    ripgrep
    speedtest-cli
    tmux
    tree
    yt-dlp
    zoxide
    aria2
    ffmpeg
  ];

  home.stateVersion = "22.05";
}
