#!/usr/bin/env bash
# Full bootstrap process
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/full-bootstrap.sh)

# Tools are required
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/install-tools.sh)

# We need our SSH key
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/generate-ssh-key.sh)

# Login for GitHub CLI
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/gh-auth-login.sh)

# Add SSH key to GitHub
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/add-ssh-key-to-github.sh)

# Logout of GitHub CLI
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/gh-auth-logout.sh)