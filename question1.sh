#!/bin/bash 
#Group Members
#Luisa Aimoli 10169687
#Braedan Robinson 10188414
#Quentin Petraroia 10145835


read -p "please enter a number: " num
total=$num
while true; do
    
     read -p "enter a operation: " operation
     if [[ $operation == ":q" ]] ; then
         echo "thanks for using the calculator"
         break
     fi
     if [[ $operation != "+" && $operation != "-" && $operation != "*" && $operation != "/" ]]
         then
             echo "Please enter a valid input"
             continue
     fi  
     read -p "enter a number again: " num1
     if  [[ $num1 == ":q" ]]; then
         echo "thanks for using the calculator"
         break
     fi

     if [[ $operation == "+" ]] 
        then
            total=$((total + num1))
            echo "The result so far is: " $total
        elif [[ $operation == "-" ]] 
           then
              total=$((total - num1))
              echo "The result so far is: " $total
        elif [[ $operation == "*" ]] 
           then
              total=$((total * num1))
              echo "The result so far is: " $total
        elif [[ $operation == "/" ]]
           then
              total=$((total / num1))
              echo "The result so far is: " $total  
      fi  
done
