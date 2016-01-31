#!/bin/bash

### Check that we have a container to backup
# Retrieve list of containers created from the leed image
export leed_container="$(docker ps -a --filter "ancestor=hervenicol/leed" -q)"

# Check we have strictly 1 container
if [[ "$(echo "$leed_container" | wc -w)" -ne "1" ]]; then
	echo "One and only one leed container must be found for the backup to work."
	exit 1
fi


### Create a backup directory
export leed_backupdir="$(pwd)/leed_$(date +%F).backup"
if [[ -d "$leed_backupdir" ]]; then
	echo "Backup directory $leed_backupdir already exists."
	echo "I will NOT overwrite it; please rename or delete before backup."
	exit 1
fi
mkdir -p "$leed_backupdir"

echo "Backuping container $leed_container to $leed_backupdir"
docker-compose -f backup_compose.yml up --force-recreate
