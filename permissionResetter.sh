#/bin/bash
#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#Quentin Petraroia 10145835


temp=$(cat $2 | awk '{print $1" " $2}')
var=$(ls -lR | awk '{print $1" " $9}')

if [[ $1 == "-s" ]]
  then 
     echo "OLD" "CURENT" "FILE"
     for oldWord in $temp; do
         for word in $var; do
             if [[ $oldWord == $word ]] ; then
                 echo $word
                #try to find the files that match
                #got stuck at this part
             fi 
         done
     done   
fi

if [[ $1 == "-r" ]] 
  then
     echo "Permissions reset from $var to $temp"
     #very confused on this part
fi
