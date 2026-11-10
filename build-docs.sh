#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGE_TAG="main-bot-dev"

docker build -t "$IMAGE_TAG" -f "$REPO_ROOT/Dockerfile" "$REPO_ROOT"

docker run --rm \
  -v "$REPO_ROOT:/workspace" \
  "$IMAGE_TAG" \
  sphinx-build -b html docs/source docs/build

echo "Docs built at $REPO_ROOT/docs/build/index.html"
