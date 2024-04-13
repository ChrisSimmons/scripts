#!/usr/bin/env bash
# Add self to sudoers and lift password requirement
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/add-self-to-sudoers.sh)

# On Raspberry Pi the "/etc/sudoers.d/010_pi-nopasswd" file is created, but we want to rid ourselves of that.
sudo rm -f /etc/sudoers.d/010_pi-nopasswd

# Configure to allow $USER to sudo without password
export SUDOERS_NO_PASSWORD=/etc/sudoers.d/$USER
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee $SUDOERS_NO_PASSWORD
sudo chmod 0440 $SUDOERS_NO_PASSWORD
