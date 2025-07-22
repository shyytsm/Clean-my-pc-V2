#!/bin/bash

SCRIPT_NAME="clean-my-pc"
SOURCE_SCRIPT="./clean-my-pc.sh"
INSTALL_PATH="/usr/local/bin/$SCRIPT_NAME"

echo "🔧 Installation de $SCRIPT_NAME..."

if [[ ! -f "$SOURCE_SCRIPT" ]]; then
  echo "❌ Le fichier $SOURCE_SCRIPT est introuvable."
  exit 1
fi

sudo cp "$SOURCE_SCRIPT" "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"

echo "✅ Script installé avec succès à $INSTALL_PATH."
echo "🚀 Lancement immédiat de $SCRIPT_NAME..."
"$SCRIPT_NAME"
