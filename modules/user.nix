{ pkgs, ... }:

{
  users.users."thomas" = {
    isNormalUser = true;
    description = "thomas";
    extraGroups = [ "wheel" ];
    packages = with pkgs; [];
  };
}
