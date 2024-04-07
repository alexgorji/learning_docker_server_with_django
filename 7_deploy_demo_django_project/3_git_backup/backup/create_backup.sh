#!/bin/bash

echo "backup"
echo "create_backup in demo-backend"
docker exec demo-backend sh create_backup.sh
echo "create_backup in demo-db"
docker exec demo-db sh create_backup.sh
echo "create_backup in demo-git-backup"
docker exec demo-git-backup sh create_backup.sh
echo "backup done."