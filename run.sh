#!/bin/sh

echo "$ACCEPT_LICENSE" | grep -E '[Yy]([Ee][Ss])?' > /dev/null
if [ $? -ne 0 ]
then
	printf "Do you must accept the license to use the Toolkit, set ACCEPT_LICENSE=y\n"
	exit 1
fi

apic --accept-license > /dev/null
apic edit << EOF


EOF
