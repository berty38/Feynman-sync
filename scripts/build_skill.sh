#!/usr/bin/env bash
# Builds dist/feynman-sync.skill (a zip of the skill folder) for uploading to the Claude apps.
set -euo pipefail
cd "$(dirname "$0")/../skills"
mkdir -p ../dist
rm -f ../dist/feynman-sync.skill
zip -qrX ../dist/feynman-sync.skill feynman-sync -x '*/.DS_Store'
echo "built dist/feynman-sync.skill"
