{ config, pkgs, ... }:
{
  imports = [ ];

  # Enable EFI Boot.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi = {
    canTouchEfiVariables = true;
    efiSysMountPoint = "/boot/efi";
  };

  # Configure grub to boot the encrypted partition.
  boot.loader.grub = {
    enable = true;
    version = 2;
    device = "nodev";
    efiSupport = true;
  };

  fileSystems."/" = { 
    device = "/dev/system-vg/root-lv";
    fsType = "ext4";
  };

  fileSystems."/boot/efi" = {
    device = "/dev/disk/by-partlabel/EFI";
    fsType = "vfat";
  };

  swapDevices = [{
    device = "/dev/system-vg/swap-lv"; 
  }];
} 
