#!/bin/sh

# Check if .env file exists
if [ ! -f .env ]; then
  echo "❌ .env file not found"
  exit 1
fi

# Export variables from .env file
export $(grep -v '^#' .env | xargs)

# Substitute environment variables in the template and write to init.sql
envsubst < init.template.sql > init.sql

echo "✅ init.sql generated successfully"
