{
  enable = true;
  global.brewfile = true;
  brews = [ "aws-sam-cli" ];
  casks = [ "mqttx" "docker" ];
  onActivation.cleanup = "uninstall";
}
