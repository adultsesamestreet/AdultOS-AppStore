#!/usr/bin/env bash
set -euo pipefail

PLUGIN_DIR="/app/addons"
PLUGIN_FILE="${PLUGIN_DIR}/theporndb-tmm-plugin.jar"

mkdir -p "${PLUGIN_DIR}"

if [[ "${TMM_FETCH_TPDB_ON_START:-true}" == "true" ]] && [[ ! -s "${PLUGIN_FILE}" ]]; then
  echo "[tmm-tpdb] Fetching TPDB plugin jar from latest release..."
  URL=$(curl -fsSL https://api.github.com/repos/ThePornDatabase/TinyMediaManager-Plugin/releases/latest \
    | jq -r '.assets[] | select(.name | endswith(".jar")) | .browser_download_url' \
    | head -n1)

  if [[ -n "${URL}" && "${URL}" != "null" ]]; then
    curl -fL "${URL}" -o "${PLUGIN_FILE}"
    echo "[tmm-tpdb] Installed TPDB plugin to ${PLUGIN_FILE}"
  else
    echo "[tmm-tpdb] Could not resolve plugin download URL; continuing without auto-install."
  fi
fi

exec "$@"
