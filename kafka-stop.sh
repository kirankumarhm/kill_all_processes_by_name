#!/bin/bash

process="kafka"

i=1
echo "Running Script to kill all $1 processes"

while [ $i -lt 100 ]; do
        PID=`ps -ef | grep $process | grep -v 'grep' | awk '{print $2}'`
        if [ "" !=  "$PID" ]; then
                echo "killing $PID"
                kill -9 $PID
        fi
        i=$(( $i + 1 ))
done
echo "Done.."

