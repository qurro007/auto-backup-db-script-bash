#!/bin/bash

# Variable
MYSQL_USER="root"
MYSQL_PASSWORD="example"
MYSQL_HOST="localhost"
MYSQL_DATABASE="wordpress"

# Path and file name
BACKUP_DIR="./backup/"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/$MYSQL_DATABASE-$DATE.sql"

# make the folder for backup
mkdir -p $BACKUP_DIR

# command backup
mysqldump -u $MYSQL_USER -p $MYSQL_PASSWORD -h $MYSQL_HOST $MYSQL_DATABASE > $BACKUP_FILE

# shopkeeping, delete backup file more that 7 day old
find $BACKUP_DIR/* -mtime +7 -exec rm {} \;