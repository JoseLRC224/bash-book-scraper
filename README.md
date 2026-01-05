# 🛠️ Scripts de Práctica Bash - JoseLRC224

Este repositorio contiene una colección de scripts en Bash desarrollados durante mi aprendizaje de automatización, web scraping y manejo de archivos en Linux. El objetivo principal es practicar la lógica de programación en consola y el procesamiento de datos reales.

## 🚀 Contenido del Repositorio

### 1. Automatización y Scraping
* **`scraper_wikipedia.sh`**: Descarga contenido educativo de Wikipedia (Linux, Git, Bash) utilizando `curl`. Incluye un proceso de limpieza para convertir HTML en texto plano (`.txt`).
* **`generar_markdown.sh`**: Toma los archivos de texto descargados y los compila en un único documento profesional en formato Markdown (`MANUAL_GIT_LINUX.md`) con índice dinámico.

### 2. Utilidades de Búsqueda y Gestión
* **`buscar_en_manual.sh`**: Un buscador interactivo que permite localizar palabras clave dentro de los archivos descargados, resaltando las coincidencias.
* **`limpiar.sh`**: Script de mantenimiento para eliminar archivos temporales y directorios fallidos, manteniendo el espacio de trabajo organizado.

## 📖 Cómo usar estos scripts

1. **Dar permisos de ejecución:**
   ```bash
   chmod +x *.sh
