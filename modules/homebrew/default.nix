{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" "git-delta" "imagemagick" ];
  casks = [ "mqttx" "docker" "vlc" "ollamac" "amethyst" "iina" "wezterm" "leader-key" "nikitabobko/tap/aerospace" ];
  taps = [ "sonatype-nexus-community/nancy-tap" ];
  onActivation.cleanup = "uninstall";
}
