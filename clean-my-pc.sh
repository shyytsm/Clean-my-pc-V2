#!/bin/bash

echo " Nettoyage du système..."

# note Nettoyage du cache utilisateur
rm -rf ~/.cache/*

# note Nettoyage des paquets inutilisés
sudo apt-get autoremove -y
sudo apt-get autoclean -y

# note Nettoyage des journaux système
sudo journalctl --vacuum-time=7d

echo "Nettoyage terminé."
