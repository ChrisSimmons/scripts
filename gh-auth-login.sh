#!/usr/bin/env bash
# GitHub CLI login
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/gh-auth-login.sh)

echo "Auth/Login for GitHub CLI.  Please \"Skip\" uploading your SSH key.  We'll do that later..."
gh auth login --git-protocol ssh --web
