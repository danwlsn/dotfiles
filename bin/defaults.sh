echo "Fixing mac dock"
defaults write com.apple.dock tilesize -int 16
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock persistent-apps -array
killall Dock

