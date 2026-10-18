# App Mate 4.º · Parcial 4: notas para modificarla

- **Archivo fuente:** `app.html`. Edita siempre este archivo.
- **Versión descargable:** `index.html`. No la edites a mano; se regenera con `./construir.sh`.
- **Versión en línea (Artifact):** https://claude.ai/artifact/VWYNzJYH17E8AoPZe2Um1L. Para actualizarla, publica `app.html` en esa misma URL.

## Dónde está cada cosa dentro de `app.html`
- `CUR`: moneda nacional (lempiras), con sus billetes y monedas.
- `MAX_TRIES = 6`: intentos antes de mostrar la respuesta. Las pistas salen en el intento 2 y en el 4 (función `submit`).
- `L63` … `L80`: generadores de preguntas de cada lección. Cada uno devuelve `num(...)`, `choice(...)`, `timeQ(...)` o una pregunta de tipo `grid`.
- `UNITS`: catálogo de las lecciones, con su número, página del libro, nombre y generadores.
- `GAMES`: los 4 juegos de la pantalla de inicio.

## Para agregar otro parcial
Crea los generadores `L81`, `L82`… y agrégalos a `UNITS`. Si es necesario, cambia el encabezado («Parcial 4»).
