#!/bin/bash

REPOS=(
  "git@github.com:SAM-Research/sam-instant-messenger.git"
  "git@github.com:SAM-Research/denim-on-sam.git"
  "git@github.com:SAM-Research/deployment.git"
  "git@github.com:SAM-Research/sam-dispatch.git"
  "git@github.com:SAM-Research/sam-cli.git"
  "git@github.com:SAM-Research/test-client.git"
  "git@github.com:SAM-Research/health-service.git"
)

for repo in "${REPOS[@]}"; do
  dir_name=$(basename "$repo" .git)
  if [ -d "$dir_name" ]; then
    echo "📁 $dir_name already exists, skipping..."
    continue
  fi

  echo "Cloning $repo..."
  if git clone "$repo"; then
    echo "✅ Cloned $repo"
  else
    echo "❌ Failed to clone $repo" >&2
  fi
done
