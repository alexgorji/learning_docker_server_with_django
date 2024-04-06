#!/bin/sh
if [ -z "$CRON_MINUTE" ]; then echo "Must provide CRON_MINUTE in environment" 1>&2
    exit 1
fi

echo "*/$CRON_MINUTE * * * * sh /var/usr/scripts/create_backup.sh" > crontab.txt
/usr/bin/crontab crontab.txt
# start cron
/usr/sbin/crond -f -l 8