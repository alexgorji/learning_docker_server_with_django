backup:
1. install cron (it is already installed, alpine)
2. add a cron job to run ./make_backup.sh
3. add an env var for setting the time
4. test if if works:
   1. set time to 1 min
   2. clean volume