#!/bin/bash

PAGINAS=("Linux" "Git")
URL_BASE="https://es.wikipedia.org/wiki"

mkdir -p Mi_Manual_Personal

for TEMA in "${PAGINAS[@]}"; do
    echo "Descargando $TEMA..."
    
    # 1. Bajamos el contenido
    curl -s -L -A "Mozilla/5.0" "${URL_BASE}/${TEMA}" > temp.html
    
    # 2. Limpieza simplificada: 
    # Extraemos solo las líneas que parecen párrafos reales y quitamos etiquetas
    sed -n '/<p>/,/<\/p>/p' temp.html | sed 's/<[^>]*>//g' | grep -v "^$" > "Mi_Manual_Personal/${TEMA}.txt"
    
    # 3. Verificación de éxito
    if [ -s "Mi_Manual_Personal/${TEMA}.txt" ]; then
        echo "[OK] ${TEMA}.txt creado con éxito."
    else
        echo "[ERROR] Algo falló con $TEMA. Intentando respaldo..."
        # Plan B: Guardar todo el texto sin filtrar párrafos
        sed 's/<[^>]*>//g' temp.html > "Mi_Manual_Personal/${TEMA}.txt"
    fi
done

rm temp.html
