#!/usr/bin/env bash
# Full bootstrap process
# TODO - This is one-time-only, if only for the generate-ssh-key.sh call.  Maybe move stuff like that to the front and split?
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/quick-boostrap.sh)

# Add self to sudoers
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/add-self-to-sudoers.sh)

# Pull trusted SSH keys
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/ssh-import-id-gh-chris-simmons.sh)

# Tools are required
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-tools.sh)

# We need our SSH key
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/generate-ssh-key.sh)

# Login for GitHub CLI
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/gh-auth-login.sh)

# Add SSH key to GitHub
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/add-ssh-key-to-github.sh)

# Logout of GitHub CLI
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/gh-auth-logout.sh)

# Add GitHub fingerprints to known_hosts
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/github-fingerprints-to-known-hosts.sh)

# yadm
source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/yadm.sh)