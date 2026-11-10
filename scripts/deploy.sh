#!/bin/bash

cd "$HOME/serveur/LINUX" || exit 1

if [ ! -d ".git" ]; then
    echo "Erreur : dépôt Git introuvable"
    exit 1
fi

git pull || exit 1

sudo cp index.html style.css /var/www/html/ || exit 1

echo "Déploiement terminé avec succès !"