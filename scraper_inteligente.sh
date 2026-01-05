#!/bin/bash

URL_BASE="https://git-scm.com/book/en/v2"
CAPS=("Getting-Started" "Git-Basics" "Git-Branching")

echo "--- Iniciando Scraping Inteligente ---"

mkdir -p Libros_Pro

for CAP in "${CAPS[@]}"; do
    echo "Procesando $CAP..."
    
    # 1. Descarga temporal para analizar
    wget -q -O "temp.html" "${URL_BASE}/${CAP}"
    
    # 2. Extraer el título del HTML:
    # Busca la línea <title>, quita las etiquetas y limpia espacios
    TITULO_EXTRAIDO=$(grep -oP '(?<=<title>).*?(?=</title>)' temp.html | sed 's/ /_/g' | sed 's/|//g')
    
    # Si por algo falla la extracción, usamos el nombre de la URL
    FINAL_NAME=${TITULO_EXTRAIDO:-$CAP}
    
    echo "Título detectado: $FINAL_NAME"
    
    # 3. Guardar con el nombre real extraído
    mv temp.html "Libros_Pro/${FINAL_NAME}.html"
done

echo "--- Proceso terminado. Revisa la carpeta Libros_Pro ---"
ls Libros_Pro
