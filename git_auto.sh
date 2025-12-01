#!/bin/bash

# Verificar si se ha proporcionado un mensaje de commit
if [ -z "$1" ]; then
    echo "Error: Debes proporcionar un mensaje para el commit."
    echo "Uso: ./git_auto.sh \"Tu mensaje de commit\""
    exit 1
fi

echo "--> Ejecutando: git add ."
git add .

echo "--> Ejecutando: git commit -m \"$1\""
git commit -m "$1"

echo "--> Ejecutando: git push"
git push

echo "¡Proceso completado con éxito!"
