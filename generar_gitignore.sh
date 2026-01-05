#!/bin/bash

echo "--- Generando archivo .gitignore ---"

# Usamos > para crear el archivo desde cero
echo "# Archivos de sistema y temporales" > .gitignore
echo ".DS_Store" >> .gitignore
echo "Thumbs.db" >> .gitignore

echo "" >> .gitignore
echo "# Descargas de Scraping" >> .gitignore
echo "*.html" >> .gitignore
echo "*.htm" >> .gitignore
echo "*.pdf" >> .gitignore

echo "" >> .gitignore
echo "# Carpetas de organización" >> .gitignore
echo "Parte_*/" >> .gitignore
echo "temp/" >> .gitignore

echo "" >> .gitignore
echo "# Python (por si acaso luego haces scripts en Python)" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "*.py[cod]" >> .gitignore

echo "[OK] Archivo .gitignore generado con éxito."
