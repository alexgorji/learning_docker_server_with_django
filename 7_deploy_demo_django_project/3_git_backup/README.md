backup:
1. Add a container with github
2. Create a new user and add copy ssh keys (not pushed to repository!) into ~/.ssh
3. Add github.com to known hosts
4. A github repository will be used to backup media files of backend and the dump file of db. 
5. Add create_backup.sh and load_backup.sh (also to db and backend). These scripts can be used separately or via scripts in the backup container. A cron job is set inside the backup container to create backup.