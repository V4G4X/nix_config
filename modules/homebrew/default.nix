{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" "git-delta" "imagemagick" "yq" ];
  casks = [ "mqttx" "docker" "vlc" "ollamac" "amethyst" "iina" "wezterm" "leader-key" "aerospace" ];
  taps = [ "sonatype-nexus-community/nancy-tap" "nikitabobko/tap" ];
  onActivation.cleanup = "uninstall";
}
