#!/bin/bash

echo "backup: Removing contents of backup."
cd /var/usr/backup-data
rm -rf ./*
echo "backup: Contents removed from backup."

