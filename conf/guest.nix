{ config, pkgs, ... }:
{
  # Remove the fsck that runs at startup.
  #boot.initrd.checkJournalingFS = false;

  # Enable virtualbox guest editions.
  virtualisation.virtualbox.guest.enable = false;
  virtualisation.virtualbox.guest.x11 = true;

  # Enable vmware guest additions.
  virtualisation.vmware.guest.enable = false;
  virtualisation.vmware.guest.headless = false;
} 
