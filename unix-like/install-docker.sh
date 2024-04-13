#!/usr/bin/env bash
# Install Docker
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-docker.sh)
# Note we don't make this a part of the full bootstrap as Docker is not going to be needed on all machines.  Most, but not all.

source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/functions.sh)

establish_os_ver

case $OS_FIRST in

  DEBIAN)
    echo "Installing Docker for Debian"
    source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-docker-debian.sh)
    ;;

  UBUNTU)
    echo "Installing Docker for Ubuntu"
    source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-docker-ubuntu.sh)
    ;;

  *)
    echo "Unable to install Docker using the best-known package/compile process for the OS \"$OS_FIRST\"."
    echo "Refer to installation instructions for your OS: https://docs.docker.com/engine/install/"
    ;;
esac
