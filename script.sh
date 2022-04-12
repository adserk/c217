#!/bin/sh

echo 1stline
echo 2ndline
pwd
echo 3rdline;echo 4thline
LOGFILE=logfile

superecho()
{
if [ -d $2 ]
then 

	echo $1 >> $2
else 
	echo $1 > $2
fi
}

superecho hello


touch $LOGFILE

ARGUMENT1=$1
ARGUMENT2=$2

echo $#
if $# -gt 1 ]
then 
	echo "You used the args $1 $2" > $LOGFILE 
else
	echo "Not enough arguments provided, bye bye" > $LOGFILE
	exit 1
fi


