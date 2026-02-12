# Deprecation Policy

## Objetivo

Desactivar documentación duplicada sin romper flujos existentes.

## Política para WBS/backlogs locales

- WBS local en repos de componentes pasa a estado:
  - **Local scope** (si solo cubre implementación interna), o
  - **Deprecated** (si duplica coordinación transversal).
- La WBS oficial transversal vive en `docs/public/master_wbs.md`.

## Plan recomendado (sin modificar otros repos en este ticket)

1. Identificar WBS/backlogs duplicados por repo.
2. En cada `docs/wbs/WBS.md` de componente, agregar nota al inicio:
   - “La WBS oficial vive en biolitica-docs: `<link>`”.
3. Mantener enlaces backward-compatible durante una ventana de transición.
4. Al cierre de transición, dejar únicamente scope local en repos de componentes.

## Criterios de salida de deprecación

- SoT map actualizado
- enlaces cruzados activos
- equipo adopta Master WBS para priorización transversal
