#!/bin/bash

#
# Installing PHP --------------------------------------------------------------
#

echo "Preparing your device for web-development..."

echo "Creating ~/Sites directory..."
mkdir ~/Sites

echo "Installing Apache..."
brew tap homebrew/dupes
brew install -v homebrew/apache/httpd24 --with-brewed-openssl

echo "Installing PHP..."
brew tap homebrew/homebrew-php

echo "Installing PHP 5.6"
brew install php56
brew unlink php56

echo "Installing PHP 7.0"
brew install php70
