# Source of Truth Map

> No se inventan rutas. Cuando no hay path confirmado se usa `TODO: verify path`.

| Tema | Documento SoT (link) | Repo owner | Tipo | Audiencia | Notas / Deprecación |
|---|---|---|---|---|---|
| Master WBS transversal | [`docs/public/master_wbs.md`](../master_wbs.md) | docs | WBS | Public/Tech | SoT oficial. WBS locales en otros repos pasan a **local scope** o **deprecated**. |
| Deploy unified official process | [`docs/public/governance/change_process.md`](../governance/change_process.md) | docs | Runbook | Public/Tech | Tema transversal; no duplicar proceso maestro en repos de componentes. |
| Worker API contract (Admin↔Worker) | `https://github.com/biolitica/biolitica-species-admin/blob/main/docs/architecture/specs/worker_admin_contract.md` | admin | Contract | Tech | Si el path cambia: `TODO: verify path`. Docs espejo en worker deben referenciar este SoT. |
| Worker enrollment lifecycle | `https://github.com/biolitica/biolitica-species-admin/blob/main/docs/workers/lifecycle.md` | admin | Spec | Tech/Internal | Implementación específica puede vivir en worker-agent (`docs/enrollment.md`, `TODO: verify path`). |
| GBIF_OCCURRENCES_PREPARE contract | SoT primario: admin contract (`TODO: verify path`) | admin | Contract | Tech | Worker documenta payload runtime (`TODO: verify path`) y pipeline documenta schema (`TODO: verify path`) sin reemplazar SoT. |
| NFS artifacts structure | `https://github.com/biolitica/biolitica-species-admin/blob/main/docs/adr/ADR-001.md` | admin | ADR | Tech/Internal | Complemento operativo en admin ops storage doc (`TODO: verify path`). |
| Installer runbook | `https://github.com/biolitica/biolitica-worker-installer/blob/main/docs/runbook.md` | worker-installer | Runbook | Tech | Si no existe ese path exacto: `TODO: verify path`. |
| Worker runtime payload conventions | Worker runtime payload doc (`TODO: verify path`) | worker-agent | Spec | Tech | Debe alinearse con contrato SoT en admin. |
| Pipeline schema registry | Pipeline schema doc (`TODO: verify path`) | r-pipeline | Schema | Tech | Alineado con contrato versionado en admin/docs contracts. |
| Changelog transversal | [`docs/public/updates/release_notes.md`](../updates/release_notes.md) | docs | Runbook | Public | Canal oficial de updates transversales. |
