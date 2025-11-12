#!/bin/bash
# Render build script for API

echo "Installing pnpm..."
npm install -g pnpm

echo "Installing dependencies..."
cd /opt/render/project/src
pnpm install

echo "Building API..."
pnpm --filter api build

echo "Generating Prisma client..."
cd apps/api
npx prisma generate

echo "Build complete!"
