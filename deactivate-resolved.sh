#!/usr/bin/env bash
# Revert to normal DNS resolvers, deactivating systemd-resolved
# This is used primarily in DNS-specific devices like Pi-hole

sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved

sudo rm /etc/resolv.conf
echo 'search example.com' | sudo tee /etc/resolv.conf
echo 'nameserver 1.1.1.1' | sudo tee -a /etc/resolv.conf
echo 'nameserver 1.0.0.1' | sudo tee -a /etc/resolv.conf
echo 'nameserver 8.8.8.8' | sudo tee -a /etc/resolv.conf
echo 'nameserver 8.8.4.4' | sudo tee -a /etc/resolv.conf
