#!/bin/sh
#
# Restore the Call of Duty 4 players folder
#

PROFILE_NAME=Fabi
CURRENT=`pwd`
DESTINATION=~/Library/Application\ Support/Call\ of\ Duty\ 4/players/profiles

# Create a backup
mv "$DESTINATION/$PROFILE_NAME" "$DESTINATION/$PROFILE_NAME.bak"

# Move the profile to the destination folder
mv -v "$CURRENT/$PROFILE_NAME" "$DESTINATION"
