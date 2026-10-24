#!/bin/bash
# Serves this folder on http://127.0.0.1:8000 and opens the Case Explainer.
# Keep this Terminal window open while you read; press Ctrl-C to stop.
cd "$(dirname "$0")" || exit 1
PORT=8000
while lsof -iTCP:$PORT -sTCP:LISTEN >/dev/null 2>&1; do PORT=$((PORT+1)); done
(sleep 1; open "http://127.0.0.1:$PORT/00_Case_Explainer.html") &
echo "Case Explainer: http://127.0.0.1:$PORT/00_Case_Explainer.html"
echo "Press Ctrl-C to stop."
exec python3 -m http.server "$PORT" --bind 127.0.0.1
