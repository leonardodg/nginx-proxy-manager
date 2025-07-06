#!/bin/bash

set -e

. /usr/bin/common.sh

# Create a copy of or symlink /origin/opt as /opt to speed up chown

log_info 'Synchronizing persisted permissions ...'
if ! [ -e "/opt" ]
then
	log_info '/opt does not exist'
	if [ "$PUID" = "0" ] && [ "$PGID" = "0" ]
	then
		log_info 'running as root: placing symlink ...'
		ln -s '/origin/opt' '/opt'
	else
		log_info "custom UIDs ($PUID:$PGID) => copying files for chown ..."
		cp -a '/origin/opt' '/opt'
	fi
elif [ -d "/opt" ]
then
	log_info 'rsync /opt ...'
	# NOTE: "--copy-as=$PUID:$PGID" could be used here as well but the current "chown" is very selective so we just sync the files
	rsync --recursive --links --perms --times -D --delete '/origin/opt/' '/opt/'
fi

exec /init