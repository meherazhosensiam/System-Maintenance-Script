#!/bin/bash

echo "===== Starting System Maintenance ====="

# Update package list
echo "[+] Updating package lists..."
sudo apt update

# Upgrade packages
echo "[+] Upgrading installed packages..."
sudo apt upgrade -y

# Remove unused packages
echo "[+] Removing unused packages..."
sudo apt autoremove -y

# Clean package cache
echo "[+] Cleaning package cache..."
sudo apt autoclean
sudo apt clean

# Remove temporary files
echo "[+] Deleting temporary files..."
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

echo "===== System Maintenance Completed ====="