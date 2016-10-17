#!/bin/bash
#group members
#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#Quentin Petraroia 10145835


var=($(ifconfig | grep inet))
#echo "${var[@]}"

for i in "${var[@]}"
do
   if [[ $i == ad* ]]; then
       newVar=${i:5}
       if [[ $newVar == 127* ]]; then
           echo $newVar "Local IP"
       else
          if [[ $newVar == 10* ]] || [[ $newVar == 192.168* ]]; then
              echo $newVar "Private IP"
       fi 
       fi 
   fi
done
