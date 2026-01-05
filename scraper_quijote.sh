#!/bin/bash

# Configuración
LIBRO="Don_Quijote"
URL_BASE="https://www.gutenberg.org/cache/epub/1513" # Basado en el ID del Quijote

echo "--- Iniciando descarga de $LIBRO ---"

# Crear carpetas
mkdir -p "$LIBRO" && cd "$LIBRO"
mkdir -p Parte_1 Parte_2

# Simulación de descarga de 10 capítulos (usando el índice del proyecto)
for i in {1..10}; do
    echo "Descargando Capítulo $i..."
    # Descargamos el archivo (usamos el comando touch para simular si la URL fallara)
    # En un caso real aquí iría el wget de la subpágina
    wget -q -O "capitulo_$i.html" "https://www.gutenberg.org/cache/epub/1513/pg1513-images.html"
    
    if [ "$i" -le 5 ]; then
        mv "capitulo_$i.html" Parte_1/
    else
        mv "capitulo_$i.html" Parte_2/
    fi
done

echo "--- Organización de $LIBRO finalizada ---"
ls -R
