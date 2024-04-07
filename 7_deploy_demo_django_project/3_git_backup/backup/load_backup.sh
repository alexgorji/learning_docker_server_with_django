#!/bin/bash

echo "load backup"
echo "load_backup in demo-git-backup"
docker exec demo-git-backup sh load_backup.sh
echo "load_backup in demo-backend"
docker exec demo-backend sh load_backup.sh
echo "load_backup in demo-db"
docker exec demo-db sh load_backup.sh
echo "load backup done."