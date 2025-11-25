#!/bin/bash

ARCHIVO="prueba.txt"
DIRECTORIO="test_dir"

# Crear un directorio si no existe
if [ ! -d "$DIRECTORIO" ]; then
    echo "Creando directorio $DIRECTORIO..."
    mkdir "$DIRECTORIO"
else
    echo "El directorio $DIRECTORIO ya existe."
fi

# Crear un archivo y escribir en él
echo "Esto es una línea de prueba." > "$DIRECTORIO/$ARCHIVO"
echo "Archivo creado en $DIRECTORIO/$ARCHIVO"

# Verificar si el archivo existe y tiene contenido
if [ -s "$DIRECTORIO/$ARCHIVO" ]; then
    echo "El archivo existe y no está vacío."
    echo "Contenido:"
    cat "$DIRECTORIO/$ARCHIVO"
else
    echo "El archivo no existe o está vacío."
fi

# Limpieza (opcional, comentado para que se pueda ver el resultado)
# rm -rf "$DIRECTORIO"
# echo "Limpieza realizada."
