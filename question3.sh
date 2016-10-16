#!/bin/bash
#Group Members
#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#Quentin Petraroia 10145835


count1=0
count2=0
count3=0
while true; do
   echo "user 1 press 1 user 2 press 2 user 3 press 3: "
   read -n 1 var1
   clear
   if [ $var1 == 1 ]; then
       ((count1++))
   
   elif [ $var1 == 2 ]; then
       ((count2++))

   elif [ $var1 == 3 ]; then
        ((count3++))

   fi
   for i in {1..40} ; do
       if [ $i -eq $count1 ]; then
          echo -n "|->"
       elif
           [ $i -gt $count1 ]; then
               echo -n " "
        else 
            if
              [ $i -lt $count1 ]; then
                  echo -n "~"
            fi
        fi
    done
    echo "#Lane 1#"
    for j in {1..40} ; do
        if [ $j -eq $count2 ]; then
            echo -n "|->"
        elif 
           [ $j -gt $count2 ]; then
               echo -n " "
        else
           if
            [ $j -lt $count2 ]; then
                echo -n "~"
           fi
        fi
    done
    echo "#Lane 2#"
    for k in {1..40} ; do
        if [ $k -eq $count3 ]; then
            echo -n "|->"
        elif
           [ $k -gt $count3 ]; then
               echo -n " "
        else
           if
            [ $k -lt $count3 ]; then
                echo -n "~"
           fi
        fi
     done
     echo "#Lane 3#"
    if [ $count1 -eq 40 ]; then
        echo "player 1 wins"
        break
    fi 
    if [ $count2 -eq 40 ]; then
        echo "player 2 wins"
        break
    fi
    if [ $count3 -eq 40 ]; then
        echo "player 3 wins"
        break
    fi 
done        
