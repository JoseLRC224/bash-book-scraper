#!/bin/bash

echo "--- Buscador del Manual Personal ---"
read -p "Qué palabra quieres buscar?: " PALABRA

echo "Resultados para '$PALABRA':"
echo "---------------------------"

# grep -i (ignora mayúsculas) -n (muestra número de línea)
grep -in --color "$PALABRA" Mi_Manual_Personal/*.txt

echo "---------------------------"

