{ pkgs, ... }: {

  programs = {
    fd.enable = true;
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
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };
  };

  home.packages = with pkgs; [
    eza
    bat
    btop
    cargo
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
    nnn
    yazi
    fortune
    cowsay
  ];

  home.stateVersion = "22.05";
}
