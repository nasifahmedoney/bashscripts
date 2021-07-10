#! /bin/bash

#echo "new bash script" > file.txt #writes in file.txt

#cat > file.txt #rewrite the file.txt

#adding with existing text
#cat >> file.txt #rewrite the file.txt



: '
block comments
'

#hereDoc
: '
cat << commentblocktodisplay
comments comments
another comment
commentblocktodisplay
'
#if else
: '
count=10

if [ $count == 10 ]
then
	echo "condition true"
elif (( $count >= 10 ))
then
	echo "condition false"
else
	echo "condition  not true"
fi

#conditions -eq, -ne, -gt, -o, (( $count > 10 )) can also be used, 


age=10

if  (( $age>9 )) || (( $age<11 )) 
then
	echo "condition true"
else
	echo "condition false"
fi
'






