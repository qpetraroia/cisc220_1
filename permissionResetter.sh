#/bin/bash

temp=$(cat $2 | awk '{print $1" " $2}')
var= $( ls $2 | awk '{print $1" " $9}')
#echo $temp
for oldWord in $temp; do
    echo $oldWord
    oldPerm=""
    for word in $var; do
        echo $word
        #if [[ $oldWord == $word ]]
          # oldPerm=$ 
           # break 
    done     
done

if [[ $1 == "-s" ]]
  then 
     echo "OLD" "CURENT" "FILE"
        # cat $2 | awk '{print $1}'
        
         
fi
