#!/bin/bash
set -euo pipefail

PORT="${1:-8080}"
URL="http://localhost:${PORT}"

echo "🚀 Starting local preview at ${URL}"

# Open in browser in the background when available.
case "$OSTYPE" in
  darwin*)  open "$URL" >/dev/null 2>&1 || true ;;
  linux*)   xdg-open "$URL" >/dev/null 2>&1 || true ;;
  msys*|cygwin*) start "$URL" >/dev/null 2>&1 || true ;;
esac

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "$PORT"
fi

if command -v python >/dev/null 2>&1; then
  exec python -m SimpleHTTPServer "$PORT"
fi

echo "❌ Python is required to run local preview."
exit 1
