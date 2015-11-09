#
# Install Cask applications----------------------------------------------------
#
echo "Installing Applications..."
# Apps
apps=(
    adobe-creative-cloud
    atom
    alfred
    caffeine
    cakebrew
    dash
    google-chrome
    google-chrome-canary
    google-drive
    iterm2
    sequel-pro
    popkey
    robomongo
    slack
    sketch
    sketch-toolbox
    viscocity
    virtualbox
    vagrant
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Applications..."
brew cask install --appdir="/Applications" ${apps[@]}
