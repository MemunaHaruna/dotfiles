#!/bin/bash

echo "In dotfiles init.sh file"

SYNC_DOTFILES="./sync_files"
BASH_FILE="~/.bash_profile"
APPEND_TO_BASH_PROFILE=$(cat $SYNC_DOTFILES >> $BASH_FILE)

if [ -e "$BASH_FILE" ]
then
  echo "Appending dotfiles to existing .bash_profile"
  $APPEND_TO_BASH_PROFILE
else
  echo "Creating a new bash_profile in Home Directory and appending dotfiles to it"
  touch $BASH_FILE
  $APPEND_TO_BASH_PROFILE
fi
