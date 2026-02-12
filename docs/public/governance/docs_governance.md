# Docs Governance (reglas duras)

## Marco

1. `biolitica-docs` es la fuente oficial transversal (Capa 1) para:
   - Master WBS
   - SoT map
   - políticas documentales
2. Repos de componentes contienen el detalle técnico de implementación.
3. Está **prohibido duplicar** specs/contratos canónicos sin declarar SoT.

## Reglas operativas

- Todo documento nuevo debe indicar owner repo y tipo (Spec/ADR/Runbook/Contract/WBS).
- Si hay conflicto entre documentos, prevalece el documento marcado como SoT en `source_of_truth/map.md`.
- WBS locales de componentes no reemplazan Master WBS.

## Flujo mínimo de actualización

1. Decisión (registrar en `decisions.md` o ADR repo owner).
2. Actualización documental (SoT map + documento afectado).
3. Creación/actualización de tickets en repos owner.
4. Publicación en release notes transversal si el cambio impacta múltiples repos.
