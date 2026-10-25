#!/usr/bin/env bash
set -euo pipefail

repoDir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd -- "$repoDir"

pythonBin="$repoDir/.venv/bin/python"
if [[ ! -x "$pythonBin" ]]; then
    pythonBin="python3"
fi

if ! command -v "$pythonBin" >/dev/null 2>&1 || ! "$pythonBin" -c 'import mkdocs, material, mkdocs_redirects' >/dev/null 2>&1; then
    printf '%s\n' 'Sparkive dependencies are missing. Set them up with:' >&2
    printf '%s\n' '  python3 -m venv .venv' '  .venv/bin/python -m pip install -r requirements.txt' >&2
    exit 1
fi

if ! command -v firefox >/dev/null 2>&1; then
    printf '%s\n' 'Firefox was not found. Install it and ensure firefox is on PATH.' >&2
    exit 1
fi

export BROWSER=firefox
exec "$pythonBin" -m mkdocs serve --config-file "$repoDir/mkwebsite.yml" --dev-addr 127.0.0.1:8001 --open "$@"