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
'

#continue, skips the condition and continues to the next step i++

for (( i=0; i<10; i++ ))
do
	if [ $i == 5 ]
	then
		continue
	fi
	echo $i
done


