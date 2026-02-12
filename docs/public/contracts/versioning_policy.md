# Contract Versioning Policy

## Reglas

1. Todo contrato canónico debe declarar versión semántica (`MAJOR.MINOR.PATCH`).
2. Cambios breaking incrementan `MAJOR` y requieren plan de migración.
3. `MINOR` agrega campos compatibles; `PATCH` corrige ambigüedades sin romper.
4. Cada cambio debe actualizar:
   - SoT map
   - release notes
   - tickets de implementación en repos afectados

## Compatibilidad mínima

- Productores y consumidores deben registrar versión soportada.
- Durante transición breaking, mantener ventana de compatibilidad definida en release notes.
