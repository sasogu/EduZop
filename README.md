# EduZop

Juego de unir colores con iconografia musical, pensado para sesiones rapidas.

### Features

- Tablero 6x6 con fichas grandes y animaciones suaves
- Notas musicales por color (SVG embebido en canvas)
- Puntaje, tiempo y mejor marca guardada
- Pantalla inicial con modo Clasico y Zen
- UI moderna y limpia, lista para GitHub Pages

### Instalacion

Requisitos: Node.js 18+ y npm.

Instalacion reproducible (recomendado): usa `package-lock.json`.

```bash
rm -rf node_modules
npm ci
```

```bash
npm install
```

Nota: si borras `package-lock.json`, `npm ci` no funcionara y pierdes reproducibilidad.

### Desarrollo local

```bash
npm run dev
# http://localhost:3004/
```

### Build estatico (GitHub Pages)

```bash
npm run build
# outputs to ./docs
```

### Verificacion rapida

```bash
npm ci
npm run build
```
