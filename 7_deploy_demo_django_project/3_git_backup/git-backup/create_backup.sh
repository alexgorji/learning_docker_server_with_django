#!/bin/bash


cd "$BACKUP_REPOSITORY_NAME"

git pull --rebase
mkdir -p ./backup-data

rm -rf ./backup-data/*

cp -r "$BACKUP_DATA_PATH"/. ./backup-data/

git add .

if git status | grep "nothing to commit" >/dev/null; then
  echo "nothing to commit"
else
  git commit -m backup
fi

git push