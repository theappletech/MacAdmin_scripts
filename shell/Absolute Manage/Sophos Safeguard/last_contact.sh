#!/bin/sh

#Check to see if SafeGuard is installed
if [ -f "/usr/bin/sgadmin" ]; then
/usr/bin/sgadmin --status | grep "Last contact" | awk '{print $4, $5, $6, $7, $8}'
else
	echo "Not installed"
fi
exit 0