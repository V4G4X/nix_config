{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" "git-delta" "imagemagick" "yq" "opencode" ];
  casks = [ "mqttx" "docker" "vlc" "ollamac" "amethyst" "iina" "wezterm" "leader-key" "aerospace" ];
  taps = [ "sonatype-nexus-community/nancy-tap" "nikitabobko/tap" "opencode-ai/tap" ];
  onActivation.cleanup = "uninstall";
}
