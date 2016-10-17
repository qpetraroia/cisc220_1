#!/bin/bash

#ls -lr | awk '{print $1" " $9}' > savedPermissions.txt

check=savedPermissions.txt
if ! [ -f "$check" ] ; then
    echo "creating file"
    ls -lR | awk '{print $1" " $9}' > savedPermissions.txt
else
    
    var=($(ls | grep -e "savedPermissions*" | wc -l))
   ls -lr | awk '{print $1" " $9}' > savedPermissions${var[*]}.txt
    
fi

   
