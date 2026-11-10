#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGE_TAG="main-bot-dev"

docker build -t "$IMAGE_TAG" -f "$REPO_ROOT/Dockerfile" "$REPO_ROOT"

docker run --rm \
  -v "$REPO_ROOT:/workspace" \
  "$IMAGE_TAG" \
  bash -c '
    set -euo pipefail
    g++ -std=c++17 -Isrc src/add.cpp src/test/test_add.cpp -lgtest -lgtest_main -pthread -o /tmp/main-bot-tests
    /tmp/main-bot-tests
  '
