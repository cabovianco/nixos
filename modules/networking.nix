{ ... }:

{
  networking.hostName = "nixos";

  networking.networkmanager.enable = false;

  networking.wireless.iwd = {
    enable = true;
    settings = {
      General = {
        EnableNetworkConfiguration = true;
      };
    };
  };
}
