#!/bin/bash

#
# Setup Machine ---------------------------------------------------------------
#
installPath="./Install"

bash "$installPath/install-xcode-tools.sh"

# Install Homebrew if we don't have it
bash "$installPath/install-homebrew.sh"


# Install global NPM packages
bash "$installPath/install-node.sh"

#
# Install Applications --------------------------------------------------------
#
bash "$installPath/install-applications.sh"

#
# Install Atom packages -------------------------------------------------------
#
bash "$installPath/install-atom.sh"


#
#  Install RVM ----------------------------------------------------------------
#
if test ! "$(which rvm)"; then
    echo "Installing RVM..."
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
fi


#
# Install PHP Stuff -----------------------------------------------------------
#
bash "$installPath/install-php.sh"

echo "Installing Composer..."
if test ! "$(which composer)"; then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi

echo "Installing Drush..."
if test ! "$(which drush)"; then
    composer global require drush/drush:dev-master
fi
