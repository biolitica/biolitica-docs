# Security Red Lines (NO publicar en `docs/public/`)

Contenido que **nunca** debe estar en documentación pública:

1. Tokens, API keys, credenciales temporales o permanentes.
2. Llaves privadas (PEM, PKCS, SSH).
3. IPs/hosts productivos y rutas internas sensibles.
4. Dumps de logs con headers de autenticación (`Authorization`, `x-api-key`, cookies de sesión).
5. Secretos en ejemplos de `.env`, YAML, JSON o scripts.
6. Información de acceso a infra (bastion, VPN, paneles internos).

Si hay duda, mover contenido a `docs/internal/` y pedir revisión.
