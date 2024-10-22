sudo dnf install sbctl aquamarine aylurs-gtk-shell bluedevil cliphist wl-clipboard flatpak dolphin dolphin-plugins edk2-ovmf fcitx5 fcitx5-qt fcitx5-configtool fcitx5-gtk fcitx5-mozc ffmpegthumbs foot gh gnome-bluetooth gwenview hyprcursor hypridle hyprland hyprlang hyprlock swww hyprpcker hyprwayland-scanner jq ark kdeconnect kdegraphics-thumbnailers krita kwallet pam-kwallet kwalletmanager5 mpv neovim nwg-look plasma-browser-integration plasma-nm plasma-pa playerctl pipx qbittorrent hyprpolkitagent hyprsunset qt5-qtwayland qt6-qtwayland rsync starship tesseract tesseract-langpack-eng typescript virt-manager wlsunset xdg-desktop-portal-hyprland xwaylandvideobridge yt-dlp greetd libdbusmenu-gtk3 libsoup3 libnotify upower python3-build python3-pillow python3-setuptools_scm python3-wheel python3-libsass webp-pixbuf-loader gtk-layer-shell gtk3 gtksourceview3 gobject-introspection yad ydotool xdg-user-dirs-gtk fish adw-gtk3-theme breeze-gtk axel bc coreutils cmake curl fuzzel wget ripgrep nodejs-npm meson gjs xdg-user-dirs brightnessctl ddcutil python3-pywayland python3-psutil hyprutils corectrl steam lutris heroic-games-launcher ryzenadj flatpak-kcm gamemode pipewire wireplumber mangohud cups samba sane gamescope gamescope-session-plus gamescope-session-common deckyloader nerd-fonts umu-launcher dosbox-staging v4l2loopback btop

## Flatpaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install org.chromium.Chromium io.github.ripose_jp.Memento md.obsidian.Obsidian com.spotify.Clientorg.signal.Signal com.github.d4nj1.tlpui

### Flatpak overrides
sudo flatpak override --filesystem=~/.themes
sudo flatpak override --filesystem=~/.local/share/themes
sudo flatpak override --filesystem=xdg-config/Kvantum:ro
sudo flatpak override --env=QT_STYLE_OVERRIDE=kvantum
sudo flatpak override --filesystem=~/.icons
sudo flatpak override --filesystem=~/.local/share/icons
sudo flatpak override --env=ELECTRON_OZONE_PLATFORM_HINT=auto

pipx ensurepath

## Bun
curl -fsSL https://bun.sh/install | bash

## Spicetify
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
# https://wiki.ultramarine-linux.org/en/installation/post-advanced/
# ProtonVPN and Windscribe
