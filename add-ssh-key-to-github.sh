#!/usr/bin/env bash
# Add an SSH key to your GitHub account 
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/add-ssh-key-to-github.sh)

echo "Adding SSH key to GitHub account..."
SSH_KEY_TITLE="$USER@$HOSTNAME (`date +%s`)"
gh ssh-key add ~/.ssh/id_rsa.pub --title "$SSH_KEY_TITLE" --type authentication