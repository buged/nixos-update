{ config, pkgs, ... }:
{
  # Set the name hostname of the machine.
  networking.hostName = "lenovo";

  # Enable SSH but disable root logins.
  services.openssh = {
    enable = true;
    permitRootLogin = "no";
  };

  # Enable wireless networking.
  networking.wireless = {
    enable = false;
    userControlled.enable = false;
  };

  networking.useDHCP = false;
  networking.interfaces.enp3s0.useDHCP = true;
  networking.interfaces.wlp2s0b1.useDHCP = true;
  networking.networkmanager.enable = true;
} 
 
