#!/bin/bash

echo "WELCOME TO FLIP-COIN-SIMULATION"

check()
{
        head=0
        tail=0
        while(true)
        do

                winner=$((RANDOM%2))

                        if [ $winner -eq 1 ]
                        then
                                head=$(($head+1))
                        if [ $head == 21 ]
                        then
                        break
                        fi
                        elif [ $winner -eq 0 ]
                        then
                                tail=$(($tail+1))
                        if [ $tail == 21 ]
                        then
                        break
                        fi
                        fi
        done
}
        while(true)
        do
        check
                if [ $(($head-$tail)) -eq 2 -o $(($tail-$head)) -eq 2 ]
                then
                        echo "HEAD AND TAIL MINIMUM DIFFERENCE 2 REACHED AS HEAD=$head and TAIL=$tail"
                break
                fi
        done
