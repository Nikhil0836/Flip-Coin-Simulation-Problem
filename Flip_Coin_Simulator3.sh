#! /bin/bash

head=0
tail=0
i=0
j=0
coin=$((RANDOM%2))
   while [ $coin -gt -1 ]
   do
   	coin=$((RANDOM%2))

    	if [[ $coin -eq 0 ]]
    	then
      		head=$(($head+1))
    	else
      		tail=$(($tail+1))
    	fi
    		echo "$head"
    		echo "$tail"
    	if [[ $head -ge 21 && $tail -ge 21 ]]
    	then
        	if [[ $head -gt $tail ]]
        	then
           		val=$(($head - $tail))
        	else
           		val=$(($tail - $head))
        	fi
        	if [[ $head -eq $tail ]]
        	then
           	continue
        	elif [[ $head -gt $tail && $val -ge 2 ]]
        	then
           	echo "head is winner"
           	echo "no of times simulate head is $hea"
           	break
       		else
          	if [[ $val -ge 2 ]]
          	then
             		echo "tail is winner"
             		echo "no of times simulate tail is $tai"
             	break
          	fi
       		fi
   	fi
   done
