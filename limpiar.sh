#!/bin/bash

# Este script elimina las descargas y carpetas temporales
# creadas por el scraper de práctica.

echo "--- Iniciando limpieza de la carpeta ---"

# Borrar carpetas de capítulos (si existen)
rm -rf Parte_1/ Parte_2/

# Borrar archivos HTML descargados
rm -f *.html

echo "[OK] Se han eliminado los archivos temporales."
echo "Los scripts (.sh) y guías (.txt) permanecen intactos."
