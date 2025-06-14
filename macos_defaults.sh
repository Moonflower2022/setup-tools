#!/bin/bash



## TRACKPAD (these are only applied after restart T_T)


# sensitivity: float (min: 0, max: 3, default: 0.6875)
defaults write -g com.apple.trackpad.scaling -float 3.0

# scroll speed: float (min: 0, max: 1, default: 0.1838)
defaults write -g com.apple.trackpad.scrolling -float 1.0



## KEYBOARD (these are only applied after restart T_T)


# (min: 15, max: 120, default: 68)
defaults write -g InitialKeyRepeat -int 15 

# (min: 2, max: 120, default: 5)
defaults write -g KeyRepeat -int 2



## TIME (MENU BAR?)


# set time to format as such: Thu 18 Aug 21:46:18
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""



## SCREENCAPTURE


# remove wait time before screenshots appear in finder
defaults write com.apple.screencapture show-thumbnail -integer 0

# remove date time in recordings and screenshots
defaults write com.apple.screencapture "include-date" -integer 0



## DOCK


# make it take 1.5s for dock to show up (default: remove the "autohide-delay" tag from com.apple.docb) 
defaults write com.apple.dock autohide-delay -float "0.5"



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



## TEXT REPLACEMENT


# get rid of the period on double space setting
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled 0 # killall Finder



## KILLING (to apply changes)

for app in "Activity Monitor" \
	"cfprefsd" \
	"Dock" \
	"Finder" \
	"Messages" \
	"Photos" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done