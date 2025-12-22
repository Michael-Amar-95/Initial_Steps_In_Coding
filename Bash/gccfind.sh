#!/bin/bash

# give permission to run the script
chmod 700 $0

#check that the user didnt send a lot of args
if [ $# -ge 4 ]; then
    echo "illegal number of parameters"
    exit
fi

#check that the user send enough args
if [ 1 -ge $# ]
then
	echo "Not enough parameters"
	exit
fi

#check if there is a flag and if he is legal
if [ $# -eq 3 ]; then
    if [[ $3 != '-r' ]]; then
    echo "flag most to be -r"
    exit
    fi
fi


#delete all the compile file from the directory
for file in $(ls $1)
do
    if [[ $file == *.out ]]
    then
    rm $1/$file
    fi
done

# search for the word in all file that are in the current directory
for file in $(ls $1)
do
    if [[ $file == *.c ]]; then
        # flag -i is for searching a word in file, in a case insensitive way
        # flag -w is for catch whole word
        if grep -qiw $2 $1/$file; then 
            #delete the 2 last chars
            file_name=${file::-2}
            #compile with the new name
            gcc -w $1/$file -o "$1/$file_name.out"
        fi
    fi
done

# check if I got a flag "-r"
if [[ $3 == '-r' ]]
then
	# Iterate all files
	for file in $(ls $1)
	do
		# check if the file is a directory
		if [[ -d "${1}/${file}/" ]]
		then
			# apply gccfind.sh on the directory
			$($0 $1/$file $2 "-r")
		fi
	done
fi