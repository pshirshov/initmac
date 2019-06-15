#!/bin/bash -xe

SCREENSHOT_TARGET=~/Desktop/Screenshots
mkdir -p $SCREENSHOT_TARGET
defaults write com.apple.screencapture location $SCREENSHOT_TARGET

# Graphite/Gray accent/Highlight
defaults write NSGlobalDomain AppleAccentColor -int -1
defaults write NSGlobalDomain AppleHighlightColor "0.847059 0.847059 0.862745 Graphite"

# Download newly available App Store updates in the background
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Expand Save/Print Dialog Boxes by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Trackpad: enable tap to click for this user and for the login screen
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Limit Ad Tracking
defaults write com.apple.AdLib forceLimitAdTracking -bool true

## Finder

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredSearchViewStyle -string "Nlsv"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Search current folder by default
defaults write com.apple.finder FXDefaultSearchScope SCcf

# Show the home folder instead of all files when opening a new finder window
defaults write com.apple.finder NewWindowTarget PfHm

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable snap-to-grid for icons on the desktop
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Set grid spacing for icons on the desktop
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 80" ~/Library/Preferences/com.apple.finder.plist

# Set the size of icons on the desktop
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 64" ~/Library/Preferences/com.apple.finder.plist

# Disable iCloud as default save location
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

killall Finder
## End Finder


## Dock
# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Show Percent Battery in menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

killall Dock
## End Dock

## Calendar
# Start week on:
# 0: Sunday
# 6: Saturday
defaults write com.apple.iCal "first day of week" -int 1

# Turn on timezone support
defaults write com.apple.iCal "TimeZone support enabled" -bool true

# Show events in year view
defaults write com.apple.iCal "Show heat map in Year View" -bool true

killall Calendar>/dev/null || true
## End Calendar

## Safari
# Set up Safari for development
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
killall Safari > /dev/null || true
## End Safari

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Prevent Photos from opening automatically when a device is plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0

# Hide Ruler in TextEdit
defaults write com.apple.TextEdit ShowRuler -bool false

# Display HTML files as HTML code instead of formatted text in TextEdit
defaults write com.apple.TextEdit IgnoreHTML -bool true
