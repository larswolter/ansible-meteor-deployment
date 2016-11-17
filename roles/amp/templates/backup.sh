#!/bin/sh

# Backup databes encrypted to {{ backup_location }}
cd /tmp
echo "dumping mariadb database"
/usr/bin/mysqldump -u root --all-databases | /bin/gzip | /usr/bin/gpg --symmetric --passphrase "{{ backup_password }}" --batch --yes --cipher-algo AES192 --output mariadb-backup-`date +\%Y\%m\%d`.sql.gz.pgp
cp mariadb-backup-`date +\%Y\%m\%d`.sql.gz.pgp {{ backup_location }}/{{ site_name}}
rm mariadb-backup-`date +\%Y\%m\%d`.sql.gz.pgp
