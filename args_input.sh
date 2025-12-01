#!/bin/bash

# ==========================================
# EJEMPLO DE MANEJO DE ARGUMENTOS Y ENTRADA
# ==========================================

# 1. ARGUMENTOS DE LÍNEA DE COMANDOS
# ----------------------------------
# $# contiene el número de argumentos pasados al script.
# -eq es el operador de comparación numérica "equal" (igual).
if [ $# -eq 0 ]; then
    # $0 contiene el nombre del propio script.
    echo "No se pasaron argumentos. Uso: $0 argumento1 argumento2"
else
    echo "Se recibieron $# argumentos."
    
    # $1 es el primer argumento, $2 el segundo, etc.
    echo "El primer argumento es: $1"
    
    echo "Listado de todos los argumentos:"
    # Iteramos sobre cada argumento recibido usando "$@"
    # "$@" se expande a argumentos individuales, respetando espacios si están entre comillas.
    for arg in "$@"; do
        echo " - Argumento: $arg"
    done
fi

echo "-----------------------------------"

# 2. ENTRADA INTERACTIVA (USER INPUT)
# -----------------------------------
# echo -n imprime sin salto de línea al final, para que escribas al lado.
echo -n "Por favor, introduce tu nombre: "

# read espera entrada del usuario y la guarda en la variable NOMBRE.
read NOMBRE
echo "Hola, $NOMBRE. ¡Bienvenido!"

echo "-----------------------------------"

# 3. CONFIRMACIÓN Y EXPRESIONES REGULARES
# ---------------------------------------
# read -p muestra un mensaje (prompt) antes de esperar la entrada.
read -p "¿Deseas continuar? (s/n): " RESPUESTA

# [[ ... ]] permite comparaciones avanzadas.
# =~ es el operador para comparar con una Expresión Regular (Regex).
# ^[sS]$ significa:
#   ^   : Inicio de la cadena
#   [sS]: Debe ser 's' minúscula o 'S' mayúscula
#   $   : Fin de la cadena
if [[ "$RESPUESTA" =~ ^[sS]$ ]]; then
    echo "Continuando..."
else
    echo "Operación cancelada."
fi
