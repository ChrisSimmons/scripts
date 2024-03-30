#!/usr/bin/env bash
# Re-generate the SSH key
# curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/generate-ssh-key.sh | bash

SSH_KEY_TITLE="$USER@$HOSTNAME (`date +%s`)"
ssh-keygen -t rsa -P "" -C "$SSH_KEY_TITLE" -f ~/.ssh/id_rsa
