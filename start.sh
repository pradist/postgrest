#!/bin/sh

echo "📄 Generating init.sql from template..."

./generate-init.sh
if [ $? -ne 0 ]; then
  echo "❌ Failed to generate init.sql. Aborting."
  exit 1
fi

echo "🚀 Starting containers with podman-compose..."
podman-compose up
