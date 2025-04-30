#!/bin/bash

REPOS=(
  "git@github.com:SAM-Research/sam-instant-messenger.git"
  "git@github.com:SAM-Research/denim-on-sam.git"
  "git@github.com:SAM-Research/deployment.git"
  "git@github.com:SAM-Research/sam-dispatch.git"
  "git@github.com:SAM-Research/sam-cli.git"
)

for repo in "${REPOS[@]}"; do
  echo "Cloning $repo..."
  if git clone "$repo"; then
    echo "✅ Cloned $repo"
  else
    echo "❌ Failed to clone $repo" >&2
  fi
done