#!/bin/bash
#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#Quentin Petraroia 10145835 


check=savedPermissions.txt
if ! [ -f "$check" ] ; then
    ls -lR | awk '{print $1" " $9}' > savedPermissions.txt
    echo "savedPermissions created!"
else
    
    var=($(ls | grep -e "savedPermissions*" | wc -l))
   ls -lr | awk '{print $1" " $9}' > savedPermissions${var[*]}.txt
   echo "savedPermissions${var[*]} created!"  
fi

   
