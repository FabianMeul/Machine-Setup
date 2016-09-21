#!/bin/bash

#
# Install Homebrew ------------------------------------------------------------
#
if test ! "$(which brew)"; then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "Tapping some Brews..."
brew tap homebrew/dupes
brew tap homebrew/services
brew tap homebrew/versions
brew tap caskroom/versions

binaries=(
    caskroom/cask/brew-cask
    mackup
    shellcheck
    tidy-html5

    # Tools
    wget
    youtube-dl

    # Development
    git
    imagemagick
    libsass
    npm
    redis

    # Database
    mongodb
    mysql
)

echo "Installing Homebrew Binaries..."
brew install "${binaries[@]}"


# Clean up after we're done
echo "Cleaning up Homebrew..."
brew cleanup
