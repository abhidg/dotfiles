# Modified from https://kvz.io/tobuntu.html
dconf write /org/gtk/settings/file-chooser/sort-directories-first true
dconf write /org/gnome/desktop/wm/keybindings/close "['<Super>q']"
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb+dvorak')]"
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
# gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"  # fractional scaling

gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['<Alt>Up']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['<Alt>Down']"
gsettings set org.gnome.settings-daemon.plugins.media-keys play "['Pause','<Ctrl>Space']"
gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Alt>Right']"
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "['<Alt>Left']"
gsettings set org.gnome.settings-daemon.plugins.media-keys mic-mute "['<Alt>Pause']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['<Shift>Pause']"

