{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" ];
  casks = [ "mqttx" "docker" "vlc" "ollamac" ];
  taps = [ "sonatype-nexus-community/nancy-tap" ];
  onActivation.cleanup = "uninstall";
}
