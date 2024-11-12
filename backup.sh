#!/bin/bash

# Crée un dossier de sauvegarde avec la date du jour
TIMESTAMP=$(date +"%F")
BACKUP_DIR="./dolibarr_backup/$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

# Sauvegarde de la base de données MariaDB
docker exec dolibarr-mariadb-1 /usr/bin/mysqldump -u root --password=root dolibarr > "$BACKUP_DIR/dolibarr_db.sql"

# Sauvegarde des fichiers Dolibarr
docker cp dolibarr-web-1:/var/www/html "$BACKUP_DIR/dolibarr_files"

