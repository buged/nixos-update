{ config, pkgs, ... }:
{
  users.users = {
    # Disable root logins.
    root = {
      hashedPassword = "!";
    };

    # Create a the default user with sudo access.
    us3r = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      hashedPassword = "$6$/c/tdE7z3DE/OMdP$jjPPQ0UloJi8OF7ANyBu3CcWii4byIhq4b20oZ2uqlj.jvItvtY1hoV40O0nytqLpuVGqy5Z.OGbB4TwRRBwG/";
    };
  };
} 
