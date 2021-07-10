#! /bin/bash

#loops

: '
number=1
while(( $number < 10 ))
do
	echo "$number"
	number=$(( number+1 ))
done


number=1
until(( $number >= 10 ))
do
	echo $number
	number=$(( number + 1 ))
done

#for loop
for i in {0..10..1}
do
	echo $i
done

#break, break out of the loop
for (( i=0; i<10; i++ ))
do
	if [ $i == 5 ]
	then
		break
	fi
	echo $i
done


#continue, skips the condition and continues to the next step i++

for (( i=0; i<10; i++ ))
do
	if [ $i == 5 ]
	then
		continue
	fi
	echo $i
done


#script input output

#echo $1 $2 $3

arr=("$@") #array length not defined

#echo ${arr[0]} ${arr[1]} ${arr[2]}

echo $@ #all elements in the array
echo $# #number of elements in the array

#./new_script.sh a b c d
#output: a b c d, 4


#read from file

while read line
do
	echo "$line"
done < "${1:-/dev/stdin}"

'
#output



