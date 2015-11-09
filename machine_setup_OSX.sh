#
# INSTALL HOMEBREW -------------------------------------------------------------
#

echo "Installing xCode Tools..."
xcode-select --install

# Install Homebrew if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "Tapping some Brews..."
brew tap homebrew/dupes
brew tap homebrew/versions

binaries=(
    flow
    git
    imagemagick
    mongodb
    mysql
    npm
    redis
    wget
)

echo "Installing Homebrew Binaries..."
brew install ${binaries[@]}


# Clean up after we're done
echo "Cleaning up Homebrew..."
brew cleanup


# Install global NPM packages
nodePackages=(
    bower
    gulp
    grunt-cli
    nodemon
)
echo "Installing NPM Packages..."
npm install ${nodePackages[@]} -g

#
# INSTALL CASK -----------------------------------------------------------------
#
echo "Installing Homebrew Cask..."
brew install caskroom/cask/brew-cask


echo "Tapping some Casks..."
brew tap caskroom/versions

# Apps
apps=(
    adobe-creative-cloud
    atom
    alfred
    caffeine
    cakebrew
    dash
    google-chrome
    google-drive
    iterm2
    sequel-pro
    robomongo
    slack
    sketch
    sketch-toolbox
    toggldesktop
    virtualbox
    vagrant
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing Applications..."
brew cask install --appdir="/Applications" ${apps[@]}

#
# Install Atom packages ---------------------------------------------------------
#
atomPackages=(
    # UI
    atom-material-ui
    atom-material-syntax

    file-icons
    tool-bar
    flex-tool-bar
    minimap
    pigments
    highlight-line


    # Editor
    editorconfig
    color-picker
    emmet
    git-plus
    project-manager
    sync-settings
    remote-edit


    # Text tools
    atom-alignment
    change-case
    sort-lines
    trailing-spaces
    less-than-slash
    tabs-to-spaces


    # Linting
    linter
    linter-eslint
    linter-scss-lint
)

echo "Install Atom Packages..."
apm install ${atomPackages[@]}


#
#  Install RVM -----------------------------------------------------------------
#
if test ! $(which rvm); then
    echo "Installing RVM..."
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
fi


#
# Install PHP Stuff ------------------------------------------------------------
# This should be optional
#
echo "Installing Composer..."
if test ! $(which composer); then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi

echo "Installing Drush..."
if test ! $(which drush); then
    composer global require drush/drush:dev-master
fi

echo "Creating ~/Sites directory..."
mkdir ~/Sites

echo "Installing PHP..."
brew tap homebrew/homebrew-php
brew install php54
brew install php55
brew install php56
