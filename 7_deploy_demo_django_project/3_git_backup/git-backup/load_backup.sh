#!/bin/bash


cd "$BACKUP_REPOSITORY_NAME"

git add .

if git status | grep "nothing to commit" >/dev/null; then
  echo "nothing to commit"
else
  git commit -m backup
fi

git pull --rebase

echo cleaning backup
rm -rf "$BACKUP_DATA_PATH"/*

echo copying from repository to backup

cp -r ./backup-data/* "$BACKUP_DATA_PATH"/
echo done