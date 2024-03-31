#!/usr/bin/env bash
# Add self to sudoers and lift password requirement
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/add-self-to-sudoers.sh)

# Configure to allow $USER to sudo without password
export SUDOERS_NO_PASSWORD=/etc/sudoers.d/$USER
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee $SUDOERS_NO_PASSWORD
sudo chmod 0440 $SUDOERS_NO_PASSWORD
