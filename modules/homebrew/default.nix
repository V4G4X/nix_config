{
  enable = true;
  global.brewfile = true;
  casks = [ "mqttx" ];
  onActivation.cleanup = "uninstall";
}
