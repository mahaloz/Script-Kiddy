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
# A.K.A Zion Basque
# Date: 2018-08-23


# get assignment# and location from commandline
ASSN=$1
LOC=/tmp/ 
AMT=$2

# setup dir
cd $LOC

# remove old dirs
rm -r output &> /dev/null 
rm -r input &> /dev/null 

# create new dirs
mkdir output
mkdir input

# start downloads
echo "---STARTING DOWNLOAD PROCESS---"
echo ""

# download input files
cd input
i=1
for ((i = 1; i <= $AMT; i++)); do
    curl http://www.public.asu.edu/~xfeng13/CSE310Current/HW$ASSN/input$i.txt > input$i.txt
done

echo "---ALL INPUTS DOWNLOADED---"
echo 

cd ..

# download output files
cd output
for ((i=1; i <= $AMT; i++)); do
    curl http://www.public.asu.edu/~xfeng13/CSE310Current/HW$ASSN/output$i.txt > output$i.txt
done

cd ..

echo "---ALL OUTPUTS DOWNLOADED---"
echo 
echo "---SCRIPT COMPLETED---"
echo "RUN: ./assn_test.sh /path/to/compiled/program/"
