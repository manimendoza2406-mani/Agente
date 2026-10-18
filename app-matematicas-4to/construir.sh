#!/bin/sh
# Genera index.html (versión descargable) a partir de app.html (versión fuente).
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="es">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  sed -n '1,/^<\/style>$/p' app.html
  printf '</head>\n<body>\n'
  sed -n '/^<\/style>$/,$p' app.html | tail -n +2
  printf '</body>\n</html>\n'
} > index.html
echo "index.html actualizado"
