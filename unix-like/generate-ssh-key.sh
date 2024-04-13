#!/usr/bin/env bash
# Generate the SSH key
# THIS SCRIPT IS NOT IDEMPOTENT:
# While it can be run over and over safely, it will wipe out the existing SSH key.  If you regenerate the key
# you will need to re-add the public key to servers to which you need to authenticate.
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/generate-ssh-key.sh)

SSH_KEY_TITLE="$USER@$HOSTNAME (`date +%s`)"
ssh-keygen -t rsa -P "" -C "$SSH_KEY_TITLE" -f ~/.ssh/id_rsa
