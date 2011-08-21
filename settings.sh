#!/bin/bash
#
# Fix some problems in OS X.
#

# Kill all finder animations
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder ZoomRects -bool false
defaults write com.apple.finder AnimateSnapToGrid -bool false
defaults write com.apple.finder AnimateInfoPanes -bool false
defaults write com.apple.finder FXEnableSlowAnimation -bool true

#Add finder quit menu
defaults write com.apple.finder QuitMenuItem -bool true

#Show full path in finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

#Disable dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

#2D auto hide dock without bouncing apps.
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock no-glass -bool true
defaults write com.apple.dock no-bouncing -bool true

#Disable Timemachine "use this disk" popup.
defaults write /Library/Preferences/com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

killall Finder
killall Dock
