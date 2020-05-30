# Modified from https://kvz.io/tobuntu.html
# Disable many keybindings that manage windows to free them up for VSCode,
# except for a few ones I also had on macOS
dconf write /org/gnome/desktop/wm/keybindings/maximize "['<Super>z']"
dconf write /org/gnome/desktop/wm/keybindings/close "['<Super>q']"
dconf write /org/gnome/desktop/wm/keybindings/activate-window-menu "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-down "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-left "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-left "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-right "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-monitor-up "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-down "['<Super><Ctrl>Right','<Super><Ctrl>Down']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-left "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-right "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/move-to-workspace-up "['<Super><Ctrl>Left','<Super><Ctrl>Up']"
dconf write /org/gnome/desktop/wm/keybindings/switch-group "['<Ctrl>Above_Tab','<Alt>Above_Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-group-backward "['<Shift><Ctrl>Above_Tab','<Shift><Alt>Above_Tab']"
dconf write /org/gnome/desktop/wm/keybindings/switch-input-source "['<Alt>Space']"
dconf write /org/gnome/desktop/wm/keybindings/switch-input-source-backward "['<Alt><Shift>Space']"
dconf write /org/gnome/desktop/wm/keybindings/switch-panels "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/switch-panels-backward "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-down "['<Super>Right','<Super>Down']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-left "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-right "['disabled']"
dconf write /org/gnome/desktop/wm/keybindings/switch-to-workspace-up "['<Super>Left','<Super>Up']"
dconf write /org/gnome/desktop/wm/keybindings/unmaximize "['<Super><Shift>z']"
dconf write /org/gnome/mutter/keybindings/switch-monitor "['XF86Display']"
dconf write /org/gnome/mutter/keybindings/toggle-tiled-left "['<Super><Alt>Left']"
dconf write /org/gnome/mutter/keybindings/toggle-tiled-right "['<Super><Alt>Right']"
#dconf write /org/gnome/shell/keybindings/toggle-overview "['<Super>Space']"
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']" 
# ^-- to swap vs map both to escape: "['caps:swapescape']". 

# Disable showing shortcuts in dash-to-dock
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
 
# Make the Dock more macOS-like
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
# ^-- to reset e.g.: $ gsettings reset org.gnome.shell.extensions.dash-to-dock dash-max-icon-size

# Media keys
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-up "['<Alt>Up']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-down "['<Alt>Down']"
gsettings set org.gnome.settings-daemon.plugins.media-keys play "['Pause','<Ctrl>Space']"
gsettings set org.gnome.settings-daemon.plugins.media-keys next "['<Alt>Right']"
gsettings set org.gnome.settings-daemon.plugins.media-keys previous "['<Alt>Left']"
gsettings set org.gnome.settings-daemon.plugins.media-keys mic-mute "['<Alt>Pause']"
gsettings set org.gnome.settings-daemon.plugins.media-keys volume-mute "['<Shift>Pause']"
# Terminal
gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>Return']"

# Input sources
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Alt>Space']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt><Shift>Space']"

# Activate Gnome Activities Overview on hot corner <-- careful you may find this annoying
gsettings set org.gnome.desktop.interface enable-hot-corners true

# <Alt>left click to move windows (without dragging the titlebar)
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "<Alt>"
# <Alt>right click to resize windows (without dragging the titlebar)
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

# Disable <Alt><Ctrl>S minimizing windows (and freeing it up for VsCode Save-All)
gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['disabled']"

# Still click an app in the dock to open, but if it's open already, this makes a click minimize it
gsettings set org.gnome.shell.extensions.dash-to-dock click-action "minimize"

# Show weekday in clock
gsettings set org.gnome.desktop.interface clock-show-weekday true

# Move trash can from desktop to dock
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

# Show directories above files
dconf write /org/gtk/settings/file-chooser/sort-directories-first true
