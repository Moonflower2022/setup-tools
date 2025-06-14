#!/bin/bash

BACKUP_DIR="$HOME/github_projects/setup-tools"
mkdir -p "$BACKUP_DIR/settings"

# ARC
ARC_SETTINGS_PATH="$HOME/Library/Application Support/Arc"

mkdir -p "$BACKUP_DIR/settings/Arc"
cp "$ARC_SETTINGS_PATH/StorableKeybindings.json" "$BACKUP_DIR/settings/Arc"
cp "$ARC_SETTINGS_PATH/StorableSidebar.json" "$BACKUP_DIR/settings/Arc"

# VSCODE
ARC_SETTINGS_PATH="$HOME/Library/Application Support/Code/User"

mkdir -p "$BACKUP_DIR/settings/Code"
cp "$ARC_SETTINGS_PATH/settings.json" "$BACKUP_DIR/settings/Code"
cp "$ARC_SETTINGS_PATH/keybindings.json" "$BACKUP_DIR/settings/Code"

# ITERM
ITERM_SETTINGS_PATH="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
cp "$ITERM_SETTINGS_PATH" "$BACKUP_DIR/settings"

# APP ASSOCIATIONS
~/github_projects/setup-tools/app_associations/export_default_apps ~/github_projects/setup-tools/settings

# PUSH TO GITHUB
ORIGINAL_DIR=$(pwd)
cd "$BACKUP_DIR"
git add .
git commit -m "update settings"
git push
cd "$ORIGINAL_DIR"