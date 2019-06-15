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

echo "SUCCESS"
