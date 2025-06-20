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

# .zshrc
ZSHRC_PATH="$HOME/.zshrc"
cp "$ZSHRC_PATH" "$BACKUP_DIR/settings"

# ALL PLIST FILES

PLIST_FILES_PATH="$HOME/Library/Preferences"
sudo cp -r "$PLIST_FILES_PATH" "$BACKUP_DIR/settings" 2>/dev/null || true

# APP ASSOCIATIONS
~/github_projects/setup-tools/app_associations/export_default_apps ~/github_projects/setup-tools/settings

# PUSH TO GITHUB
ORIGINAL_DIR=$(pwd)
cd "$BACKUP_DIR"
git add --ignore-errors .
git commit -m "update settings"
git push
cd "$ORIGINAL_DIR"