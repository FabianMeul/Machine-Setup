#
# Install Homebrew ------------------------------------------------------------
#
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "Tapping some Brews..."
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap caskroom/versions

binaries=(
    caskroom/cask/brew-cask
    git
    imagemagick
    libsass
    mongodb
    mysql
    npm
    redis
    wget
    youtube-dl
)

echo "Installing Homebrew Binaries..."
brew install ${binaries[@]}


# Clean up after we're done
echo "Cleaning up Homebrew..."
brew cleanup
