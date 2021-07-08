#!/bin/bash

# E-Mail notifications

# vars
value=$(<~/prox_config_backup.log)
value2="Proxmox-Config Backup"
recipient="E-Mail-Address"
datetime=$(date '+%Y-%m-%d %H:%M:%S')
# backupfolders holt die Zeile 13 aus prox_config_backup.sh
backupfolders=$(sed -n 13p ./prox_config_backup.sh)

# script
if [ "$value" = "Error" ]; then
  echo "$value2 (cron job für prox_config_backup.sh) ist fehlgeschlagen" | mail -s "$value $value2 $datetime" $recipient
else
  echo -e "$value2 (cron job für prox_config_backup.sh) wurde um $datetime erfolgreich abgeschlossen. \n \nGesichert wurde: $backupfolders " | mail -s "$value $value2 $datetime" $recipient
fi