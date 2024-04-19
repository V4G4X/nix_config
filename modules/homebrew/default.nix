{
  enable = true;
  global.brewfile = true;
  casks = [ "mqttx" "docker" "vlc" "ollamac" "amethyst" ];
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" ];
  taps = [ "sonatype-nexus-community/nancy-tap" ];
  onActivation.cleanup = "uninstall";
}
