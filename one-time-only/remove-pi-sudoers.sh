#!/usr/bin/env bash
# ONE-TIME-ONLY - While this is idempotent, it's also something that you'll likely only want to do once at system creation.
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/add-self-to-sudoers.rpi.sh)

# I am making an assumption that there are no other users on the system and deleting the "010_pi-nopasswd" file that
# the RPi setup creates.  This is likely to be followed up with a call to "add-self-to-sudoers.sh"
sudo rm -f /etc/sudoers.d/010_pi-nopasswd
