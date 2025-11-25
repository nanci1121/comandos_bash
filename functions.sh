#!/bin/bash

# Definición de una función simple
saludar() {
    echo "¡Hola desde la función saludar!"
}

# Función con argumentos
sumar() {
    local NUM1=$1
    local NUM2=$2
    local RESULTADO=$((NUM1 + NUM2))
    echo $RESULTADO
}

# Llamadas a funciones
saludar

echo "Llamando a la función sumar con 5 y 7..."
TOTAL=$(sumar 5 7)
echo "El resultado de la suma es: $TOTAL"

# Variable global vs local
VAR_GLOBAL="Soy global"

prueba_scope() {
    local VAR_LOCAL="Soy local"
    echo "Dentro de la función: $VAR_GLOBAL"
    echo "Dentro de la función: $VAR_LOCAL"
    VAR_GLOBAL="Modificada en función"
}

prueba_scope
echo "Fuera de la función: $VAR_GLOBAL"
# echo "Fuera de la función: $VAR_LOCAL" # Esto daría error o estaría vacío
