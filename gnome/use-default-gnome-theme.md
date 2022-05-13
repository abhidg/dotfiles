# Use default GNOME theme in Ubuntu

I like to use the upstream GNOME theme in Ubuntu. To do so, first install
gnome-session and change the gdm3 theme, while also installing the full Adwaita
icon set (Adwaita is the default GNOME theme). These instructions apply for
Ubuntu 20.04 LTS, but might work in later versions. In the Terminal:

    sudo apt install gnome-session adwaita-icon-theme-full
    # select /usr/share/gnome-shell/gnome-shell-theme.gresource
    sudo update-alternatives --config gdm3-theme.gresource
    # set the theme and icons
    gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'
    gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'
    gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'

Logging out and logging in to the 'GNOME' or 'GNOME on Xorg' session should now
give the upstream GNOME experience. You can also change the font through GNOME
Tweaks or via gsettings. For example to use the upstream Cantarell font

    gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Cantarell Bold 11'
    gsettings set org.gnome.desktop.interface document-font-name 'Cantarell 11'
    gsettings org.gnome.desktop.interface font-name 'Cantarell 11'
