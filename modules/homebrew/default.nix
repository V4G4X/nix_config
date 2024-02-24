{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" ];
  casks = [ "mqttx" "docker" "vlc" ];
  taps = [ "sonatype-nexus-community/nancy-tap" ];
  onActivation.cleanup = "uninstall";
}
