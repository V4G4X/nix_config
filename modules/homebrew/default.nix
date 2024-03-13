{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" "cfn-lint" "nancy" "graphviz" "node" "tabbyml/tabby/tabby" ];
  casks = [ "mqttx" "docker" "vlc" "ollamac" "amethyst" ];
  taps = [ "sonatype-nexus-community/nancy-tap" ];
  onActivation.cleanup = "uninstall";
}
