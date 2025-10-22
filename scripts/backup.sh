#!/bin/bash
echo "📦 Creating backup..."
BACKUP_DIR="backup/$(date +%Y%m%d_%H%M%S)"
mkdir -p $BACKUP_DIR
cp -r /var/www/html/* $BACKUP_DIR/ 2>/dev/null || echo "No existing deployment to backup"
echo "✅ Backup created: $BACKUP_DIR"
