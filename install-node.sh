#
# Install NPM packages --------------------------------------------------------
#

# Install global NPM packages
nodePackages=(
    bower
    cordova
    gulp
    grunt-cli
    nodemon
    phonegap
)
echo "Installing NPM Packages..."
npm install ${nodePackages[@]} -g
