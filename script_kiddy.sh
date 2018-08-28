#!/bin/bash
#                          $$\                 $$\
#                          $$ |                $$ |
#  $$$$$$\$$$$\   $$$$$$\  $$$$$$$\   $$$$$$\  $$ | $$$$$$\  $$$$$$$$\
#  $$  _$$  _$$\  \____$$\ $$  __$$\  \____$$\ $$ |$$  __$$\ \____$$  |
#  $$ / $$ / $$ | $$$$$$$ |$$ |  $$ | $$$$$$$ |$$ |$$ /  $$ |  $$$$ _/
#  $$ | $$ | $$ |$$  __$$ |$$ |  $$ |$$  __$$ |$$ |$$ |  $$ | $$  _/
#  $$ | $$ | $$ |\$$$$$$$ |$$ |  $$ |\$$$$$$$ |$$ |\$$$$$$  |$$$$$$$$\
#  \__| \__| \__| \_______|\__|  \__| \_______|\__| \______/ \________|
#
# A.K.A. Zion Basque
# Date: 2018-08-23

PROG_LOC=$1
IN_LOC=/tmp/input/ 
OUT_LOC=/tmp/output/ 


# Start input piping 
i=1
mkdir /tmp/temp 
# loop for each input
for file in $IN_LOC/*; do
    cat $file | $PROG_LOC  > "/tmp/temp/out$i" &
    PID=$!
    sleep 2
    kill $PID &> /dev/null 
    i=$((i+1))
done

# Start testing output similarity
i=1
# loop for each temp output
for file in /tmp/temp/*; do
    echo $file 
    diff $file $OUT_LOC/output$i.txt > diff$i.txt 
    i=$((i+1))
done

rm -r /tmp/temp


echo "DONE"
