# Key repeat enabled
defaults write -g ApplePressAndHoldEnabled -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Set keyboard repeat rates
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to custom dir
mkdir -p "${HOME}/Screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true

# Set default folder to home dir
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library && xattr -d com.apple.FinderInfo ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Spaces span displays
defaults write com.apple.spaces spans-displays -bool true

## Safari
defaults write com.apple.Safari AutoFillCreditCardData -bool false;
defaults write com.apple.Safari AutoFillFromAddressBook -bool false;
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false;
defaults write com.apple.Safari AutoFillPasswords -bool false;
defaults write com.apple.Safari HomePage -string "about:blank"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari PreloadTopHit -bool false
defaults write com.apple.Safari SearchProviderIdentifier -string "com.duckduckgo";
