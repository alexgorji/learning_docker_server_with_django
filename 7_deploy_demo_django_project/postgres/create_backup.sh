#!/bin/sh

echo db: Dumping "$POSTGRES_DB" as "$POSTGRES_USER" into /var/usr/backup-data/db/dumped_db
mkdir -p /var/usr/backup-data/db
pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" > /var/usr/backup-data/db/dumped_db
