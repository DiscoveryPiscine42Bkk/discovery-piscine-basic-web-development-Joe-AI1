#!/bin/bash

for i in $@
do
	echo $i
	echo ","
	
done
if [ $# -gt 2 ]
then
	echo "none"
fi
