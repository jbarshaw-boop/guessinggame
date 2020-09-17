#!/bin/bash
#Important: This counts hidden (dot) files, as those are files as well.
#It does not count sub-directories or the files within those.
NUMFILES=`ls -lap ./ | grep -Ev "/|^\total" |wc -l` 
#My function. 
guess_files () { 
echo "How many files are in this directory? " 
read GUESS 
} 
guess_files 
#My while loop. 
while [ $GUESS != $NUMFILES ]  
	do if [[ $GUESS -gt $NUMFILES ]] 
	then echo "Too high, try again." 
	elif [[ $GUESS -lt $NUMFILES ]] 
	then echo "Too low, try again." 
	fi 
	guess_files 
	done 
#My if statement. 
if [[ $GUESS -eq $NUMFILES ]] 
then echo "Congratulations!" 
fi
