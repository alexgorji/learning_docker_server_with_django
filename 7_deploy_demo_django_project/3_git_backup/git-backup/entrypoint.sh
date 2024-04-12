#!/bin/bash

if [[ -z "$SSHKEY_PATH" || -z "$BACKUP_REPOSITORY" || -z "$BACKUP_REPOSITORY_NAME" || -z "$BACKUP_DATA_PATH" || -z "$GITHUB_USER_NAME" || -z "$GITHUB_USER_EMAIL" ]]; then
    echo "Must provide GITHUB_USER_NAME, GITHUB_USER_EMAIL, SSHKEY_PATH, BACKUP_REPOSITORY, BACKUP_REPOSITORY_NAME in environment" 1>&2
    exit 1
fi

#mkdir -p $BACKUP_DATA_PATH
git config --global user.name "$GITHUB_USER_NAME"
git config --global user.email "$GITHUB_USER_EMAIL"

cp "$SSHKEY_PATH"/id_rsa ~/.ssh/id_rsa
cp "$SSHKEY_PATH"/id_rsa.pub ~/.ssh/id_rsa.pub

#chown -R git:git ~/.ssh

cd ~ || exit

git clone "$BACKUP_REPOSITORY"

tail -f /dev/null