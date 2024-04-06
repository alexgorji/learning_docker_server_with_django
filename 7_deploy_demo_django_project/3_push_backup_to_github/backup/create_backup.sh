#!/bin/bash

echo "backup"
echo "create_backup in backend"
docker exec backend sh create_backup.sh
echo "create_backup in db"
docker exec db sh create_backup.sh
echo "create_backup in git-backup"
docker exec git-backup sh create_backup.sh
echo "backup done."