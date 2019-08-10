#!/bin/bash

if [ ! -d $MOUNT_POINT ] ; then
	mkdir $MOUNT_POINT
fi
/usr/bin/mount $HOSTNAME:$NFS_PATH $MOUNT_POINT -o nolock
/usr/sbin/useradd -u 1002 backupcp
destinationfile=$OPSMAN-$(/usr/bin/date +%Y%m%d%H%M%S).zip
/usr/bin/su backupcp -c "/usr/bin/cp $PWD/installation/installation.zip $MOUNT_POINT/$destinationfile"
#ls -ltr $MOUNT_POINT
mkdir -p backup_list
ls -ltrh $MOUNT_POINT/$destinationfile >backup_list/backup-file.txt
/usr/bin/cat backup_list/backup-file.txt
/usr/bin/umount $MOUNT_POINT
