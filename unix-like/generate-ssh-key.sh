#!/usr/bin/env bash
# Generate the SSH key
# THIS SCRIPT IS NOT IDEMPOTENT:
# While it can be run over and over safely, it will wipe out the existing SSH key.  It should be run with this understanding.
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/generate-ssh-key.sh)

SSH_KEY_TITLE="$USER@$HOSTNAME (`date +%s`)"
ssh-keygen -t rsa -P "" -C "$SSH_KEY_TITLE" -f ~/.ssh/id_rsa
