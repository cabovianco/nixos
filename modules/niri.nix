{ pkgs, ... }:

{
  programs.niri.enable = true;

  services.greetd = {
    enable = true;
    settings.default_session.command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd '${pkgs.niri}/bin/niri-session'";
  };

  # Desktop portal for GTK/Wayland integration
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };

  environment.sessionVariables = {
    XCURSOR_THEME = "Adwaita";
    XCURSOR_SIZE = "24";

    # Force Chromium/Electron apps to use native Wayland instead of XWayland
    NIXOS_OZONE_WL = "1";
  };
}
