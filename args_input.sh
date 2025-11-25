#!/bin/bash

# Verificar si se pasaron argumentos
if [ $# -eq 0 ]; then
    echo "No se pasaron argumentos. Uso: $0 argumento1 argumento2"
else
    echo "Se recibieron $# argumentos."
    echo "El primer argumento es: $1"
    echo "Todos los argumentos son: $@"
fi

# Entrada interactiva
echo -n "Por favor, introduce tu nombre: "
read NOMBRE
echo "Hola, $NOMBRE. ¡Bienvenido!"

# Confirmación con Yes/No
read -p "¿Deseas continuar? (s/n): " RESPUESTA
if [[ "$RESPUESTA" =~ ^[sS]$ ]]; then
    echo "Continuando..."
else
    echo "Operación cancelada."
fi
