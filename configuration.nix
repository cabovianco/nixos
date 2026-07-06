{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/boot.nix
      ./modules/networking.nix
      ./modules/locale.nix
      ./modules/input.nix
      ./modules/audio.nix
      ./modules/user.nix
      ./modules/niri.nix
      ./modules/packages.nix
      ./modules/services.nix
      ./modules/gtk.nix
      ./modules/font.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "26.05";
}
