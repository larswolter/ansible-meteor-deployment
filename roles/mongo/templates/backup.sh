#!/bin/sh

# Backup mongo database encrypted to {{ backup_location }}
echo "dumping mongo database..."
cd /tmp
/usr/bin/mongodump
echo "compresing and encrypting..."
tar -zcf - dump | /usr/bin/gpg --symmetric --passphrase "{{ backup_password }}" --batch --yes --cipher-algo AES192 --output mongo-backup-`date +\%Y\%m\%d`.gz.pgp
rm -rf dump
echo "transfering..."
cp mongo-backup-`date +\%Y\%m\%d`.gz.pgp {{ backup_location }}/{{ site_name}}
rm mongo-backup-`date +\%Y\%m\%d`.gz.pgp