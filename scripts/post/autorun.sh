#!/bin/bash

set -euo pipefail

echo "Add Flathub"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Install Flatpaks"
flatpak install --system --noninteractive flathub com.google.Chrome
flatpak install --system --noninteractive flathub com.raggesilver.BlackBox
flatpak install --system --noninteractive flathub com.slack.Slack
flatpak install --system --noninteractive flathub com.spotify.Client
flatpak install --system --noninteractive flathub org.gnome.meld
flatpak install --system --noninteractive flathub org.libreoffice.LibreOffice
flatpak install --system --noninteractive flathub org.mozilla.firefox
flatpak install --system --noninteractive flathub org.mozilla.Thunderbird
flatpak install --system --noninteractive flathub org.telegram.desktop
flatpak install --system --noninteractive flathub us.zoom.Zoom

echo "Debug installed Flatpaks"
flatpak list
