#!/bin/bash

BACKUP_DIR="$HOME/github_projects/setup"

ARC_KEYBINDINGS_PATH="$HOME/Library/Application Support/Arc/StorableKeybindings.json"
ARC_BOOKMARKS_PATH="$HOME/Library/Application Support/Arc/StorableSidebar.json"
VSCODE_SETTINGS_PATH="$HOME/Library/Application Support/Code/User/settings.json"
VSCODE_KEYBINDINGS_PATH="$HOME/Library/Application Support/Code/User/keybindings.json"
ITERM_SETTINGS_PATH="$HOME/Library/Preferences/com.googlecode.iterm2.plist"

cp "$ARC_KEYBINDINGS_PATH" "$BACKUP_DIR/settings"
cp "$ARC_BOOKMARKS_PATH" "$BACKUP_DIR/settings"
cp "$VSCODE_SETTINGS_PATH" "$BACKUP_DIR/settings"
cp "$VSCODE_KEYBINDINGS_PATH" "$BACKUP_DIR/settings"
cp "$ITERM_SETTINGS_PATH" "$BACKUP_DIR/settings"