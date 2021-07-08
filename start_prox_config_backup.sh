#!/bin/bash
# Run script A,B,C

# start backup script (nach 10 Minuten wird abgebrochen)
timeout 10m bash ~/prox_config_backup.sh

# start E-Mail-Benachrichtigung
~/notification.sh