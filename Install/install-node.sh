#!/bin/bash

#
# Install NPM packages --------------------------------------------------------
#

# Install global NPM packages
nodePackages=(

    # These packages should be installed in your project directory
    # and called using npm scripts at the following path ./node_modules/.bin/nodemon
    bower
    # cordova
    gulp
    grunt-cli
    nodemon
    # phonegap
)
echo "Installing NPM Packages..."
npm install "${nodePackages[@]}" -g
