#!/usr/bin/env bash
# Install Docker for Debian
# $ source <(curl -s https://raw.githubusercontent.com/ChrisSimmons/scripts/main/unix-like/install-docker-debian.sh)
# Note we don't make this a part of the full bootstrap as Docker is not going to be needed on all machines.  Most, but not all.

# https://docs.docker.com/engine/install/debian/
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Set up Docker's apt repository.

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Verify
sudo docker run hello-world

# https://docs.docker.com/engine/install/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER

echo "We ran \"sudo docker run hello-world\". You should be able run docker without sudo when you next logout and login."
