# auto-backup-db-script-bash
This is script bash can be use with cronjob linux for auto backup database mysql


### Variable need tobe adjust 

MYSQL_USER="root"
MYSQL_PASSWORD="example"
MYSQL_HOST="localhost"
MYSQL_DATABASE="wordpress"

### Usage
crontab job example 

0 0 * * * /bin/bash /path/backup.sh

*) every day at 12AM



### Note

- Script will create folder called "backup" which will be use for result backup file
- There is shopkeeping for delete file older than 7 day
