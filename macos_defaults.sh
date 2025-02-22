#!/bin/bash

## MOUSE

# sensitivity max (goes from 0 to 3)
defaults write NSGlobalDomain com.apple.mouse.scaling -float "3"

## KEYBOARD (these are only applied after restart T_T)

# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 15 

# normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 30

#$ TIME (MENU BAR?)

# set time to format as such: Thu 18 Aug 21:46:18
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

## SCREENCAPTURE

# remove wait time before screenshots appear in finder
defaults write com.apple.screencapture show-thumbnail -integer 0

# remove date time in recordings and screenshots
defaults write com.apple.screencapture "include-date" -integer 0

## DOCK

# make it take 2s for dock to show up
defaults write com.apple.Dock autohide-delay -float 2


## HOT CORNERS

# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# 13: Lock Screen
# 14: Quick Note

# Top left screen corner → Quick Note
defaults write com.apple.dock wvous-tl-corner -int 14
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0

# Bottom left screen corner → Put display to sleep
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0

# Bottom right screen corner → Disable screen saver
defaults write com.apple.dock wvous-bl-corner -int 6
defaults write com.apple.dock wvous-bl-modifier -int 0

## FINDER

# show app extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# disable warning when deleting files/directories
defaults write "com.apple.finder" WarnOnEmptyTrash 0

# set default search scope to current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"

# empty trash every 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"

# set finder view mode to column view (easy to change manually)
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"

## KILLING

killall SystemUIServer
killall Dock
killall Finder