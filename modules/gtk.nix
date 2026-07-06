{ ... }:

{
  programs.dconf.enable = true;
  
  programs.dconf.profiles.user = {
    databases = [{
      settings = {
        "org/gnome/desktop/interface" = {
          gtk-theme = "Adwaita";
          icon-theme = "Adwaita";
          color-scheme = "prefer-dark";

          font-name = "JetBrainsMono Nerd Font 11";
          document-font-name = "JetBrainsMono Nerd Font 11";
          monospace-font-name = "JetBrainsMono Nerd Font 11";
        };
        "org/gnome/desktop/wm/preferences" = {
          button-layout = "";
        };
      };
    }];
  };
}
