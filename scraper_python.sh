#!/bin/bash

# Configuración
URL_BASE="https://docs.python.org/3/tutorial"
CAPITULOS=("appetite" "interpreter" "introduction" "controlflow" "datastructures" "modules")

echo "--- Iniciando descarga del tutorial de Python ---"

# Descargar archivos
for cap in "${CAPITULOS[@]}"; do
    echo "Obteniendo ${cap}.html..."
    wget -q -nc "${URL_BASE}/${cap}.html"
done

# Crear carpetas para separar el libro en 2 partes
mkdir -p Parte_1 Parte_2

# Mover los archivos (Separación manual para practicar)
mv appetite.html interpreter.html introduction.html Parte_1/
mv controlflow.html datastructures.html modules.html Parte_2/

echo "--- ¡Hecho! Archivos organizados ---"
ls -R
