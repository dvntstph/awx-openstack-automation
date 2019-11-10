#!/bin/bash
#
#
# This script should convert all the entries in a CSV file to the variables for an ansible role
# Columns are mapped as 1=name 2=surname 3=uid 4=ssh_key
export NAMELIST=names.csv 

echo "user_definition:" > manage_user/vars/main.yml

for USERID in $(cat $NAMELIST | grep -v name | awk -F, '{print $3}' ) ; do 
export NAME=$(grep $USERID $NAMELIST | awk -F, '{print $1}' )
export SURNAME=$(grep $USERID $NAMELIST | awk -F, '{print $2}' )
export SSHKEY=$(grep $USERID $NAMELIST | awk -F, '{print $4}' )

echo " $NAME.$SURNAME: " >> manage_user/vars/main.yml
echo "  home: /home/nfs/$NAME.$SURNAME " >> manage_user/vars/main.yml
echo "  uid: $USERID " >> manage_user/vars/main.yml
echo "  comment: $NAME $SURNAME " >> manage_user/vars/main.yml
echo "  ssh_public_key: $SSHKEY " >> manage_user/vars/main.yml
done

