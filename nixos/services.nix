{ config, pkgs, lib, ... }:

{
  services = {

   xserver = {
      enable = true;
      displayManager.lightdm.enable = true;  # login display
      desktopManager.xfce.enable = true; # desktop GUI
   };    

   dnsmasq.settings = {
    enable = true;
    domain-needed = true;
    dhcp-range = [ "192.168.0.2,192.168.0.17" ];

   };
  };

  #	qt.platformTheme = "kde";
}
