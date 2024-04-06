1. backend:
   1. Add a backup-volume to django
   2. Add a script to django to copy media files into backup-volume (`docker compose exec backend sh ./make_backup.sh`)
2. db:
   1. Make a folder for creating a DockerFile
   2. Pull docker image of postgres
   3. Check if everything still works
   4. Add the backup-volume to db
   5. Add an script to postgres container for dumping the database and putting the dump file into backup volume (`docker compose exec db sh ./make_backup.sh`)
3. backup:
   1. `docker compose exec backup sh ./clean_backup.sh`
   2. `docker compose exec backup sh ./make_backup.sh`