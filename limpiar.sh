#!/bin/bash

echo "--- Limpiador de Entorno ---"

# Borrar basura confirmada
rm -rf Libros_Pro/
rm -f temp.html
echo "[OK] Basura eliminada."

# Preguntar por el manual
read -p "¿Quieres borrar también tu Manual de Wikipedia? (s/n): " RESP
if [ "$RESP" = "s" ]; then
    rm -rf Mi_Manual_Personal/
    echo "[OK] Manual eliminado."
else
    echo "[INFO] Se ha conservado tu manual en 'Mi_Manual_Personal/'."
fi
