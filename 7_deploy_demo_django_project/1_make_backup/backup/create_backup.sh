#!/bin/bash

echo "backup"
echo "make_backup in backend"
docker exec backend sh ./create_backup.sh
echo "make_backup in db"
docker exec db sh ./create_backup.sh
echo "backup done."