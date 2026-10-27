#!/usr/bin/env bash
# Builds dist/feynman-sync.skill (a zip of the skill folder) for uploading to the Claude apps.
set -euo pipefail
cd "$(dirname "$0")/../skills"
mkdir -p ../dist
rm -f ../dist/feynman-sync.skill
# Keep release inputs explicit so unrelated local files cannot enter the upload.
zip -qX ../dist/feynman-sync.skill feynman-sync/SKILL.md feynman-sync/agents/openai.yaml
echo "built dist/feynman-sync.skill"
