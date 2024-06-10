#!/bin/bash
NFS_DIR="/mnt/nfs/francilene"
SERVICE="httpd"
DATE=$(date '+%Y-%m-%d %H:%M:%S')
STATUS=$(systemctl is-active $SERVICE)

if [ "$STATUS" = "active" ]; then
    MESSAGE="ONLINE"
    echo "$DATE - $SERVICE - $STATUS - $MESSAGE" > $NFS_DIR/apache_online.txt
else
    MESSAGE="OFFLINE"
    echo "$DATE - $SERVICE - $STATUS - $MESSAGE" > $NFS_DIR/apache_offline.txt
fi
