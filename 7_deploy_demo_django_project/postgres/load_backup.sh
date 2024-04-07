#!/bin/sh

echo db: importing dumped_db if exists
FILE=/var/usr/backup-data/db/dumped_db
if test -f "$FILE"; then
   psql -U "$POSTGRES_USER" -d postgres -c "DROP DATABASE IF EXISTS ${POSTGRES_DB}"
   psql -U "$POSTGRES_USER" -d postgres -c "CREATE DATABASE ${POSTGRES_DB}"
   psql -U "$POSTGRES_USER" -d postgres -c "ALTER DATABASE ${POSTGRES_DB} OWNER TO ${POSTGRES_USER}"
   psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" < $FILE
fi
