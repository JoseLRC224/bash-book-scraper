#!/bin/bash

OUTPUT="MANUAL_GIT_LINUX.md"

echo "--- Generando Documento Markdown ---"

# Crear el encabezado principal
echo "# Manual Personal de Tecnología" > $OUTPUT
echo "Generado automáticamente por el scraper de **JoseLRC224** el $(date +%d/%m/%Y)." >> $OUTPUT
echo "" >> $OUTPUT
echo "## Índice" >> $OUTPUT

# Crear el índice dinámicamente
for f in Mi_Manual_Personal/*.txt; do
    TEMA=$(basename "$f" .txt)
    echo "* [$TEMA](#${TEMA,,})" >> $OUTPUT
done

echo "" >> $OUTPUT

# Añadir el contenido de cada archivo
for f in Mi_Manual_Personal/*.txt; do
    TEMA=$(basename "$f" .txt)
    echo "---" >> $OUTPUT
    echo "## $TEMA" >> $OUTPUT
    cat "$f" >> $OUTPUT
    echo "" >> $OUTPUT
done

echo "[OK] Archivo $OUTPUT creado con éxito."
