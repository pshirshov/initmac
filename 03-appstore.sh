#!/bin/bash -xe

echo "log into app store and press enter"
read

softwareupdate -l
sudo softwareupdate -i -a

# Dark Reader
mas install 1438243180
# MS RDP 10
mas install 1295203466
# Automounter
mas install 1160435653
# EasyRes
mas install 688211836
# AdGuard/Safari
mas install 1440147259
# Microsoft TODO
mas install 1274495053
# JIRA Cloud
mas install 1475897096
# Bitwarden
mas install 1352778147
# CotEditor
mas install 1024640650
# Apple Pages
mas install 409201541
# Apple Numbers
mas install 409183694
# Apple Keynote
mas install 409203825
# audio switcher
mas install 1484150558
echo "SUCCESS"
