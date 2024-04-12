#!/usr/bin/env bash
# Add self to sudoers and lift password requirement - Raspberry Pi
# This is a one-time-only script as it calls remove-pi-sudoers.sh, which is itself one-time-only
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/one-time-only/add-self-to-sudoers.rpi.sh)

source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/one-time-only/remove-pi-sudoers.sh)
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/add-self-to-sudoers.sh)
