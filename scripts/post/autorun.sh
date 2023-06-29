#!/bin/bash

set -euo pipefail

echo "Add Flathub"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Install Flatpaks"
flatpak install flathub com.google.Chrome
flatpak install flathub com.raggesilver.BlackBox
flatpak install flathub com.slack.Slack
flatpak install flathub com.spotify.Client
flatpak install flathub org.gnome.meld
flatpak install flathub org.libreoffice.LibreOffice
flatpak install flathub org.mozilla.firefox
flatpak install flathub org.mozilla.Thunderbird
flatpak install flathub org.telegram.desktop
flatpak install flathub us.zoom.Zoom

echo "Debug installed Flatpaks"
flatpak list
