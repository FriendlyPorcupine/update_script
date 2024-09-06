#!/bin/bash

# Updates und Upgrades mit Nala
echo "Aktualisiere Paketlisten und installiere Updates..."
sudo nala update && sudo nala upgrade -y

# Distribution Upgrade
echo "Führe ein Dist-Upgrade durch..."
sudo nala dist-upgrade -y

# Flatpak Updates
echo "Aktualisiere Flatpak-Programme..."
flatpak update -y

# Snap Store Updates
echo "Aktualisiere Snap-Programme..."
sudo snap refresh

# Repositories aus Launchpad oder externen Quellen
echo "Aktualisiere Pakete aus zusätzlichen Repositories..."
sudo apt update && sudo apt upgrade -y

echo "Update-Prozess abgeschlossen!"
