# Master WBS (oficial)

> Formato estable por ítem: **ID · Prioridad · Estado · Owner repo(s) · Entregables · Links**.

## 1) Infra & Installation

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-01.01 | P0 | In progress | worker-installer, admin, worker-agent | Runbook de instalación unificada (mismos artefactos, parámetros por rol), matriz de variables por entorno | Installer runbook (`TODO: verify path`) |
| WBS-01.02 | P1 | Planned | admin, worker-agent | Hardening mínimo (checklist OS/runtime/network + baseline de validación) | Security baseline (`TODO: verify path`) |

## 2) Worker Governance & Security

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-02.01 | P0 | Planned | admin, worker-agent | Especificación de revocación coherente de tokens (APPROVED→REVOKED/INVALID) + pruebas de regresión | Contract/admin policy (`TODO: verify path`) |
| WBS-02.02 | P0 | Planned | admin, worker-agent | Flujo de re-enrollment por cambio IP/red y retiro NFS asociado | Lifecycle docs (`TODO: verify path`) |
| WBS-02.03 | P1 | Planned | worker-agent, admin | Estrategia de identidad/clone (machine-id, fingerprint, controles anti-colisión) | Enrollment/identity docs (`TODO: verify path`) |

## 3) Contracts & Orchestration

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-03.01 | P0 | In progress | admin, worker-agent, r-pipeline | Contrato Admin↔Worker↔Servicios versionado y trazable | Ver `contracts/*` y SoT map |
| WBS-03.02 | P0 | Planned | admin, worker-agent, r-pipeline | Contract tests + schemas alineados (payloads y errores) | Schemas (`TODO: verify path`) |
| WBS-03.03 | P1 | Planned | admin, worker-agent | Catálogo efectivo por worker y servicios activos | Service catalog (`TODO: verify path`) |

## 4) Storage & Artifacts

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-04.01 | P0 | In progress | admin, worker-agent, r-pipeline | Política NFS actual + plan de transición a durable storage | ADR storage (`TODO: verify path`) |
| WBS-04.02 | P1 | Planned | r-pipeline, worker-agent | Conversión occurrences CSV→Parquet y criterios de validación | Pipeline schema (`TODO: verify path`) |
| WBS-04.03 | P1 | Planned | admin, worker-agent | Estructura final `/mnt/biolitica` + manifests | Ops storage (`TODO: verify path`) |

## 5) Observability & Audit

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-05.01 | P1 | Planned | admin, worker-agent | Política AuditLog/logentry para alto volumen (retención, costo, sampling) | Observability doc (`TODO: verify path`) |
| WBS-05.02 | P1 | Planned | admin, r-pipeline | Trazabilidad científica/provenance end-to-end | Provenance spec (`TODO: verify path`) |

## 6) Data Catalogs

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-06.01 | P1 | Planned | admin, r-pipeline | Ubicación y vinculación de datasets ambientales/escenarios climáticos | Catalog location (`TODO: verify path`) |

## 7) Modeling Services

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-07.01 | P1 | Planned | r-pipeline, admin, worker-agent | Contratos y estructura de `NICHE_MODEL_TRAIN` y proyecciones | Modeling contracts (`TODO: verify path`) |

## 8) Product / Deliverables

| ID | Prioridad | Estado | Owner repo(s) | Entregable(s) | Links |
|---|---|---|---|---|---|
| WBS-08.01 | P1 | In progress | admin, worker-agent, worker-installer, r-pipeline | Inventario consolidado de features (4 repos) | Repo links index |
| WBS-08.02 | P1 | Planned | admin, docs | Clasificación features internas vs comercializables | Product matrix (`TODO: verify path`) |
| WBS-08.03 | P2 | Planned | docs, admin | Mecanismo de publicación de updates (release notes/changelog) | `updates/*` |
