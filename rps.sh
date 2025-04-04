#!/bin/bash

option_input=-1
user_prompt(){
	echo -e "1. Rock\n2. Paper\n3. Scissors\n4. Exit"
	read -p "Your choice [1-4]?" option_input
}

option_1(){
            echo "You chose 1. Rock"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            if (( "$computer" == 1 )); then
                echo -e "Computer chose 1. Rock\n You tied.  Try again."
            elif (( "$computer" == 2 )); then
                echo -e "Computer chose 2. Paper\n You lost"
            else
                echo -e "Computer chose 3. Scissors.\n You win"
            fi
    }
option_2(){
            echo "You chose 2. Paper"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            if (( "$computer" == 1 )); then
                echo -e "Computer chose 1. Rock.\n You win"
            elif (( "$computer" == 2 )); then
                echo -e "Computer chose 2. Paper\n You tied"
            else
                echo -e "Computer chose 3. Scissors.\n You lost"
            fi
    }
option_3(){
            echo "You chose 3. Scissors"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            if (( "$computer" == 1 )); then
                echo -e "Computer chose 1. Rock\n You lost"
            elif (( "$computer" == 2 )); then
                echo -e "Computer chose 2. Paper\n You win"
	    else
               	echo -e "Computer chose 3. Scissors\n You tied"
            fi
    }

while [[ $option_input != 4 ]]; do
	user_prompt
	if [[ $option_input == 4 ]]; then
		break
	elif [[ $option_input == 1 ]]; then
	       option_1
        elif [[ $option_input == 2 ]]; then
               option_2
	elif [[ $option_input == 3 ]]; then
               option_3
	fi
done

echo " Have a fun day "

  


