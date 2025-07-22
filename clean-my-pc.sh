#!/bin/bash

echo "🧹 Nettoyage du système..."

# Nettoyage du cache utilisateur
rm -rf ~/.cache/*

# Nettoyage des paquets inutilisés
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# Nettoyage des journaux système
sudo journalctl --vacuum-time=7d

echo "✅ Nettoyage terminé."
