#!/bin/bash

URL_BASE="https://git-scm.com/book/en/v2"
CAPS=("Getting-Started" "Git-Basics" "Git-Branching")

echo "--- Iniciando Scraping Real (Versión Anti-Bloqueo) ---"

mkdir -p Libros_Pro

for CAP in "${CAPS[@]}"; do
    echo "Descargando $CAP..."
    
    # Usamos curl con -L (seguir redirecciones) y -A (User Agent)
    # El resultado lo guardamos directamente con el nombre del capítulo
    curl -s -L -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36" \
         "${URL_BASE}/${CAP}" > "Libros_Pro/${CAP}.html"
    
    # Verificación inmediata de tamaño
    SIZE=$(stat -c%s "Libros_Pro/${CAP}.html")
    if [ "$SIZE" -gt 1000 ]; then
        echo "[OK] Descargado correctamente ($SIZE bytes)."
    else
        echo "[ERROR] El archivo sigue vacío o es muy pequeño. Revisa tu conexión."
    fi
done

echo "--- Proceso terminado ---"
