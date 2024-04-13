#!/usr/bin/env bash
# GitHub CLI login
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/gh-auth-login.sh)

echo "Auth/Login for GitHub CLI.  Please \"Skip\" uploading your SSH key.  We'll do that later..."
gh auth login --git-protocol ssh --web --scopes "admin:public_key"
