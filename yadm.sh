#!/usr/bin/env bash
# Set up yadm for dotfiles
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/yadm.sh)

echo "Setting up yadm for dotfiles"
yadm clone git@github.com:ChrisSimmons/dotfiles.git
yadm status
yadm alt
