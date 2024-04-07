#!/bin/sh

echo db: Dumping "$POSTGRES_DB" as "$POSTGRES_USER" into /var/usr/backup/dumped_db
pg_dump -U "$POSTGRES_USER" -d "$POSTGRES_DB" > /var/usr/backup-data/db/dumped_db
