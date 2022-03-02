{config, pkgs, ...}:
{
  # The required packages for XFCE.
  environment.systemPackages = with pkgs; [
    lightdm
    lightlocker
  ];

  # Enable hardware acceleration.
  hardware.opengl.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.epson-escpr ];
  services.avahi.enable = true; # for CUPS to automatically find the printer via Wi-Fi
  services.avahi.nssmdns = true; # for CUPS to automatically find the printer via Wi-Fi
  
  # Enable KDE Connect
  programs.kdeconnect.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Update Intel CPU Microcode
  hardware.cpu.intel.updateMicrocode = true;

  # Configure the services required for a desktop.
  services = {
    xserver = {
      enable = true;
      layout = "us";
      libinput.enable = true;
      xkbOptions = "eurosign:e";

      # Make lightdm the default Display Manager and Plasma the default Desktop
      # Manager.
      displayManager = {
        lightdm.enable = true;
        defaultSession = "plasma";
      };

      # Enable Plasma as an available Desktop Manager.
      desktopManager = {
        plasma5.enable = true;
      };
    };
  };
} 
