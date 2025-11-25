#!/bin/bash

# Ejemplo de Condicional IF
NUM=10
if [ $NUM -gt 5 ]; then
    echo "El número $NUM es mayor que 5."
else
    echo "El número $NUM no es mayor que 5."
fi

# Ejemplo de Bucle FOR
echo "Contando del 1 al 5:"
for i in {1..5}; do
    echo "Número: $i"
done

# Ejemplo de Bucle WHILE
CONTADOR=3
echo "Cuenta atrás:"
while [ $CONTADOR -gt 0 ]; do
    echo "$CONTADOR..."
    ((CONTADOR--))
done
echo "¡Despegue!"

# Ejemplo de CASE
FRUTA="manzana"
case "$FRUTA" in
    "manzana")
        echo "Es una manzana roja."
        ;;
    "banana")
        echo "Es una banana amarilla."
        ;;
    *)
        echo "No conozco esa fruta."
        ;;
esac
