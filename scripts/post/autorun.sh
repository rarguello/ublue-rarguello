#!/bin/bash

set -euo pipefail

echo "Add Flathub"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "Install Flatpaks"
flatpak install flathub \
                com.google.Chrome \
                com.raggesilver.BlackBox \
                com.slack.Slack \
                com.spotify.Client \
                org.gnome.meld \
                org.libreoffice.LibreOffice \
                org.mozilla.firefox \
                org.mozilla.Thunderbird \
                org.telegram.desktop \
                us.zoom.Zoom

echo "Debug installed Flatpaks"
flatpak list
