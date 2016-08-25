#!/bin/bash

#
# Install Cask applications----------------------------------------------------
#
echo "Installing Applications..."
# Apps
apps=(

    # Development
    # ----------------------------------------------------------------------- /

        # IDE
        atom
        iterm2

        # Virtualization
        vagrant
        vagrant-manager
        virtualbox

        # Database Management
        robomongo
        sequel-pro


    # Media
    # ----------------------------------------------------------------------- /

        # Music
        google-play-music-desktop-player
        soundnode
        spotify

        # Video
        vlc
        mplayerx


    # Various
    # ----------------------------------------------------------------------- /

        # Productivity
        alfred
        appcleaner

        # Design
        adobe-creative-cloud
        sketch
        sketch-toolbox

        # Browsers
        firefox
        google-chrome
        google-chrome-canary

        # Connectivity
        slack
        viscocity

        # Cloud Storage
        google-drive
        dropbox

        # Tools
        caffeine
        cakebrew
        dash
        flux
        popkey
        transmission
)

# Install apps to /Applications
echo "Installing Applications..."
brew cask install "${apps[@]}"
