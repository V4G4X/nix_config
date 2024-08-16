{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" "git-delta" ];
  casks = [ "mqttx" "docker" "vlc" "ollamac" "amethyst" "iina" ];
  taps = [ "sonatype-nexus-community/nancy-tap" ];
  onActivation.cleanup = "uninstall";
}
