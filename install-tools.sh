#!/usr/bin/env bash
# Install required tools
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/system-bootstrapping/main/install-tools.sh)

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

echo "Updating apt ..."
sudo apt update

echo "Installing git ..."
sudo apt install git -y

echo "Installing git-lfs ..."
sudo apt install git-lfs
git lfs install

echo "Installing yadm ..."
sudo apt install yadm -y

echo "Installing jq ..."
sudo apt install jq -y

echo "Installing GitHub CLI ..."
# https://github.com/cli/cli/blob/trunk/docs/install_linux.md#installing-gh-on-linux-and-bsd
# You may find some duplication of commands here compared to above (e.g. "sudo apt update") but just keep this as-is
# as I just want to be able to go to the link above, copy the current command, and then paste it below.
sudo mkdir -p -m 755 /etc/apt/keyrings && wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

echo "Installing net-tools ..."
sudo apt install net-tools -y

# TODO - This only works with Ubuntu
# # Neovim
# # https://github.com/neovim/neovim/blob/master/INSTALL.md#ubuntu
# sudo apt-get install software-properties-common
# #sudo apt-get install python-software-properties
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get install neovim
