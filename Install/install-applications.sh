#
# Install Cask applications----------------------------------------------------
#
echo "Installing Applications..."
# Apps
apps=(
    adobe-creative-cloud
    alfred
    atom
    caffeine
    cakebrew
    dash
    firefox
    google-chrome
    google-chrome-canary
    google-drive
    iterm2
    popkey
    robomongo
    sequel-pro
    sketch
    sketch-toolbox
    slack
    spotify
    vagrant
    virtualbox
    viscocity
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Applications..."
brew cask install --appdir="/Applications" ${apps[@]}
