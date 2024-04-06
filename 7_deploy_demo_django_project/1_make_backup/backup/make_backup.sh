#!/bin/bash

echo "backup"
echo "make_backup in backend"
docker exec backend sh ./make_backup.sh
echo "make_backup in db"
docker exec db sh ./make_backup.sh
echo "backup done."