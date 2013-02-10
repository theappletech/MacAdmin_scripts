#!/bin/sh

#Check to see if SafeGuard is installed
if [ -f "/usr/bin/sgadmin" ]; then
/usr/bin/sgadmin --status | grep -A 3 "Volume info" | grep "| 0" | awk -F '|' '{print $5}'
else
	echo "Not installed"
fi

exit 0