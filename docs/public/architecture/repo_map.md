# Repo Map

| Repo | Rol principal | Documentación esperada en repo | Relación con este sitio |
|---|---|---|---|
| `biolitica-species-admin` | Orquestación, contratos principales, gobierno de workers | Specs, ADRs, ops admin, contratos canónicos | Puede ser SoT de contratos/lifecycle; aquí solo se referencia. |
| `biolitica-worker-agent` | Runtime del worker, enrollment implementación, ejecución de servicios | Runtime docs, runbooks de agente, operación local | Debe alinear docs con SoT definido en admin/docs. |
| `biolitica-worker-installer` | Instalación/provisionamiento de nodos | Installer runbook, prerequisitos, troubleshooting | SoT de instalación específica del installer. |
| `biolitica-r-modeling-pipeline` | Modelado y esquemas de pipeline | Schema docs, contratos pipeline, outputs | SoT de schemas de modelado, alineado con contratos globales. |
| `biolitica-docs` | Gobernanza transversal y coordinación | Master WBS, SoT map, políticas, links | Fuente oficial transversal (Capa 1). |
