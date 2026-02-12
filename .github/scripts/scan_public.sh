#!/usr/bin/env bash
set -euo pipefail

SCAN_DIR="docs/public"

echo "Scanning ${SCAN_DIR} for sensitive patterns..."

patterns=(
  'AKIA[0-9A-Z]{16}'
  'BEGIN[[:space:]]+PRIVATE[[:space:]]+KEY'
  'x-api-key'
  'Authorization:'
  '-----BEGIN[[:space:]]+RSA[[:space:]]+PRIVATE[[:space:]]+KEY-----'
)

failed=0
for pattern in "${patterns[@]}"; do
  if rg --hidden --line-number --ignore-case --glob '!*.png' --glob '!*.jpg' --glob '!*.jpeg' --glob '!*.gif' --glob '!*.svg' -- "$pattern" "$SCAN_DIR"; then
    echo "❌ Found forbidden pattern: $pattern"
    failed=1
  fi
done

if [[ "$failed" -ne 0 ]]; then
  echo "Public scan failed. Remove sensitive content from ${SCAN_DIR}."
  exit 1
fi

echo "✅ Public scan passed."
