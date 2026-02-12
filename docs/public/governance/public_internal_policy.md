# Public vs Internal Policy

## Publicable en este sitio

- WBS y roadmap sin datos sensibles
- SoT map y políticas
- Índices de enlaces a documentación técnica

## Lista roja (no publicable)

- Secrets, keys, tokens, credenciales
- Headers `Authorization` y headers de API keys
- IPs/hosts internos, rutas de red sensibles
- Dumps/logs con datos de producción
- Cualquier dato personal o científico sensible no anonimizado

## Manejo de contenido sensible

- Mover a repos internos o áreas privadas.
- No usar este sitio como repositorio de evidencia sensible.
- Mantener scanner de `docs/public` activo en CI.
