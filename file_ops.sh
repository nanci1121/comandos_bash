#!/bin/bash

# ==========================================
# CONFIGURACIÓN GLOBAL
# ==========================================
# Definimos las variables al principio para facilitar cambios futuros.
# Usamos 'readonly' para asegurar que no se modifiquen por error.
readonly NOMBRE_ARCHIVO="prueba.txt"
readonly NOMBRE_DIR="test_dir"

# ==========================================
# LÓGICA DEL SCRIPT
# ==========================================

# Crear un directorio si no existe
if [ ! -d "$NOMBRE_DIR" ]; then
    echo "Creando directorio $NOMBRE_DIR..."
    mkdir "$NOMBRE_DIR"
else
    echo "El directorio $NOMBRE_DIR ya existe."
fi

# Crear un archivo y escribir en él
echo "Esto es una línea de prueba." > "$NOMBRE_DIR/$NOMBRE_ARCHIVO"
echo "Archivo creado en $NOMBRE_DIR/$NOMBRE_ARCHIVO"

# Verificar si el archivo existe y tiene contenido
if [ -s "$NOMBRE_DIR/$NOMBRE_ARCHIVO" ]; then
    echo "El archivo existe y no está vacío."
    echo "Contenido:"
    cat "$NOMBRE_DIR/$NOMBRE_ARCHIVO"
else
    echo "El archivo no existe o está vacío."
fi

# Limpieza (opcional, comentado para que se pueda ver el resultado)
# rm -rf "$DIRECTORIO"
# echo "Limpieza realizada."
