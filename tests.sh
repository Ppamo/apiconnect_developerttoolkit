#!/bin/sh

if [ "$COLOR" != "false" ]
then
	RED='\e[31m'
	GREEN='\e[32m'
	BLUE='\e[36m'
	YELLOW='\e[33m'
	RESET='\e[39m'
fi

PORT=9090

printf -- $GREEN"* Running tests:\n"$RESET
printf -- $YELLOW"+ Preparing environment .. ${GREEN}OK\n"$RESET
apic --accept-license > /dev/null << EOF

EOF
printf -- $YELLOW"+ Starting $BLUEAPI Connect Developer Toolkit ."$RESET
SKIP_LOGIN=true apic edit > /.apic.log 2>&1 &

APIC_PID=$!
ps -a | grep $APIC_PID > /dev/null
if [ $? -eq 0 ]
then
	printf -- "$YELLOW. ${GREEN}OK\n"$RESET
else
	printf -- "$YELLOW. ${RED}NOK\n"$RESET
	exit 1
fi

printf -- $YELLOW"+ Waiting for server to start at port$BLUE $PORT$YELLOW ."$RESET
FOUND=0
COUNTER=0
while [ $FOUND -ne 1 -a $COUNTER -le 180 ]
do
	COUNTER=$(( COUNTER+1 ))
	sleep 0.5
	ps -a | grep -E "^[ \t]+$APIC_PID[ \t]+" > /dev/null
	if [ $? -ne 0 ]
	then
		break
	fi
	netstat -ln | grep $PORT > /dev/null
	if [ $? -eq 0 ]
	then
		FOUND=1
		break
	fi
done

if [ $FOUND -eq 1 ]
then
	printf -- "$YELLOW. ${GREEN}OK\n"$RESET
else
	printf -- "$YELLOW. ${RED}NOK\n"$RESET
	cat /.apic.log
	exit 1
	
fi

printf -- $YELLOW"+ Checking the initial page ."$RESET
curl -s http://127.0.0.1:$PORT/#/design/apis | grep "<title>IBM API Connect</title>" > /dev/null
FOUND=$?
kill -15 $APIC_PID

if [ $FOUND -eq 0 ]
then
	printf -- "$YELLOW. ${GREEN}OK\n"$RESET
else
	printf -- "$YELLOW. ${RED}NOK\n"$RESET
	exit 1
fi

exit 0
