#!/bin/bash
echo "🔄 Restoring from backup..."
LATEST_BACKUP=$(ls -td backup/*/ | head -1)
if [ -n "$LATEST_BACKUP" ]; then
    cp -r $LATEST_BACKUP* /var/www/html/
    echo "✅ Restored from: $LATEST_BACKUP"
else
    echo "❌ No backup found to restore"
    exit 1
fi
