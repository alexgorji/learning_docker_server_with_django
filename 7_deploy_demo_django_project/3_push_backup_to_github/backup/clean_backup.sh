#!/bin/bash

echo "backup: Removing contents of backup."
cd /var/usr/backup||exit
rm -rf ./*
echo "backup: Contents removed from backup."

