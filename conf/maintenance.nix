# These options make it so that  NixOS will automatically perform maintenance
# tasks like updating the OS, Deduplication and Garbage Collection. This is good
# for lower priority servers like personal gaming servers and NASes where it is
# more important that it stays updated and patched.
{ config, pkgs, ... }:
{
  # Enable daily garbage collection to remove unused packages.
  nix.gc.automatic = false;

  # Enable data deduplication. This is a resource intensive process when it
  # runs, so you may want to disable this.
  nix.autoOptimiseStore = false;

  # Enable auto updating.
  system.autoUpgrade.enable = true;

  # Allow automatic building and rebooting after updating. If this is set to
  # false, you need to manually upgrade using: nixos-rebuild switch --upgrade
  system.autoUpgrade.allowReboot = false;
} 
