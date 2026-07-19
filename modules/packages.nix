{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    curl
    yazi
    impala
    pulsemixer
    btop

    waybar
    brightnessctl
    fuzzel
    swaybg
    adwaita-icon-theme

    ghostty
    android-studio
    zed-editor
    obsidian
    spotify
    nautilus
    loupe
  ];
}

