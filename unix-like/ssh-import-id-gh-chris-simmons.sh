#!/usr/bin/env bash
# Pull SSH keys from trusted sources
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/ssh-import-id-gh-chris-simmons.sh)

# See:
# https://launchpad.net/ssh-import-id
# https://github.com/dustinkirkland/ssh-import-id

# Import from GitHub
ssh-import-id gh:ChrisSimmons

# Import from GitLab
URL="https://gitlab.com/%s.keys" ssh-import-id ChrisSimmons
