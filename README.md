# biolitica-docs

Repositorio de documentación transversal para Biolítica.

## Objetivo

Este repo separa explícitamente documentación:

- `docs/public/`: contenido apto para publicación en GitHub Pages.
- `docs/internal/`: contenido interno que **no** se publica.
- `docs/assets/`: imágenes/diagramas reutilizables.

> `noindex` y `robots.txt` reducen indexación accidental, pero **no reemplazan controles de acceso**.

## Estructura

```text
.
├── docs/
│   ├── public/
│   │   ├── architecture/
│   │   ├── contracts/
│   │   ├── index.md
│   │   ├── master_wbs.md
│   │   ├── roadmap.md
│   │   ├── decisions.md
│   │   ├── links.md
│   │   └── robots.txt
│   ├── internal/
│   │   └── SECURITY_RED_LINES.md
│   └── assets/
├── mkdocs.yml
├── requirements.txt
└── .github/
    ├── scripts/scan_public.sh
    └── workflows/pages.yml
```

## Uso local

### Requisitos

- Python 3.11+ recomendado

### Levantar sitio local

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
mkdocs serve
```

Luego abrir `http://127.0.0.1:8000`.

### Build local (igual que CI)

```bash
mkdocs build --strict
```

## Publicación en GitHub Pages

El deploy se hace con `.github/workflows/pages.yml` usando el flujo oficial de Pages (artifact + deploy):

1. Push a `main`.
2. El workflow ejecuta scanner de `docs/public/`.
3. Si pasa, construye el sitio con MkDocs.
4. Publica a GitHub Pages con `actions/deploy-pages`.

### Configuración requerida en GitHub

- **Settings → Pages**: Source = **GitHub Actions**.
- **Settings → Actions → General → Workflow permissions**: **Read and write permissions**.

## Reglas de publicación (public vs internal)

### Sí va en `docs/public/`

- Roadmap de alto nivel
- WBS maestro sin secretos
- ADRs/decisiones sin datos sensibles
- Visiones generales de arquitectura/contratos

### No va en `docs/public/`

- Tokens, secrets, llaves privadas
- Cabeceras de autenticación (`Authorization`, `x-api-key`)
- IPs/hosts/rutas internas sensibles
- Logs o dumps con datos de producción

Usar `docs/internal/` para contenido sensible y revisar `docs/internal/SECURITY_RED_LINES.md`.

## Guardrails de seguridad

Se incluye `.github/scripts/scan_public.sh` que falla CI si detecta patrones sensibles obvios dentro de `docs/public/` (por ejemplo `AKIA`, `BEGIN PRIVATE KEY`, `x-api-key`, `Authorization:`).

## Troubleshooting

- **Error de deploy por permisos**: verificar `Workflow permissions = Read and write` en Settings de Actions.
- **Pages no despliega**: confirmar que en Settings → Pages la fuente sea **GitHub Actions**.
- **Falla `scan_public.sh`**: remover/reubicar contenido sensible desde `docs/public/` hacia `docs/internal/`.
- **`mkdocs build --strict` falla por links/navegación**: validar que los archivos referenciados existan y estén incluidos en `mkdocs.yml`.
