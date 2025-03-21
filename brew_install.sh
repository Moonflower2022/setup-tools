#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# APPLICATIONS

brew install rectangle
brew install obsidian
brew install arc
brew install visual-studio-code
brew install discord
brew install obs
brew install omnidisksweeper
brew install google-drive
brew install karabiner-elements
brew install iterm2
brew install bitwarden
brew install maccy

# COMMAND LINE TOOLS

brew install yt-dlp
brew install fzf
brew install ffmpeg
brew install grep
brew install sbcl
brew install xclip

# Remove outdated versions from the cellar.
brew cleanup