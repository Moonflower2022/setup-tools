#!/bin/bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# APPLICATIONS

brew install --cask rectangle
brew install --cask obsidian
brew install --cask arc
brew install --cask visual-studio-code
brew install --cask discord
brew install --cask obs
brew install --cask omnidisksweeper
brew install --cask google-drive
brew install --cask karabiner-elements
brew install --cask iterm2
brew install --cask bitwarden
brew install --cask maccy
brew install --cask appcleaner

# COMMAND LINE TOOLS

brew install yt-dlp
brew install fzf
brew install ffmpeg
brew install grep
brew install sbcl
brew install xclip
brew install exiftool
brew install tree

# Remove outdated versions from the cellar.
brew cleanup