#!/bin/bash
# Render start script for API

echo "Starting Medical Triage API..."
cd /opt/render/project/src/apps/api

# Run database migrations
echo "Running database migrations..."
npx prisma migrate deploy

# Start the application
echo "Starting server..."
node dist/main.js
