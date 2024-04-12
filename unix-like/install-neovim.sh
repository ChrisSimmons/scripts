#!/usr/bin/env bash
# Install neovim
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-neovim.sh)

case $OS_FIRST in

  DEBIAN)
    echo "This is Debian"
    ;;

  UBUNTU)
    echo "Installing neovim for Ubuntu"
    # Neovim
    # https://github.com/neovim/neovim/blob/master/INSTALL.md#ubuntu
    sudo apt-get install software-properties-common
    #sudo apt-get install python-software-properties
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim
    ;;

  DARWIN)
    echo "Installing neovim for Mac OS (Darwin)"
    brew install neovim
    ;;

  *)
    echo "Unable to install neovim using the best-known package/compile process for the OS \"$OS_FIRST\"."
    echo "Refer to neovim installation instructions for your OS: https://github.com/neovim/neovim/blob/master/INSTALL.md"
    ;;
esac
