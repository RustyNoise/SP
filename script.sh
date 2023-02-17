#!/bin/bash

echo -e "Author of program: Brylev Roman, 719-1\nName: UserNameFileFinder \n"
# Print current folder
pwd

# Ask for a file name
while [ true ]
do
	read -p "Enter a file name: " filename
	if test -f "$filename"
	then
		read -p "Enter username: " username
		trueuser=`stat -c%U "$filename"`;
		truegroup=`stat -c%G "$filename"`;
		if [ "$trueuser" != "$username" ]
		then
			echo "Owner of the file is $trueuser";
			echo "Owner group of the file is $truegroup"
		else
			echo "You are owner of this file"
		fi
	else echo "$filename doesn't exists, re-enter file name"
	fi
done


