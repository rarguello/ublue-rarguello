#!/bin/bash

set -euo pipefail

echo "Disable Fedora third-party repos"
/usr/lib/fedora-third-party/fedora-third-party-opt-out
/usr/bin/fedora-third-party disable

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
