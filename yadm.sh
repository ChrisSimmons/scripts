#!/usr/bin/env bash
# Set up yadm for dotfiles
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/yadm.sh)

echo "Setting up yadm for dotfiles"
yadm clone git@github.com:ChrisSimmons/dotfiles.git
yadm status
yadm alt
echo "If you want to make sure you have your latest dotfiles (i.e. this is the first time you're setting stuff up on this machine), follow this up with:"
echo "$ yadm checkout \"$HOME\""
