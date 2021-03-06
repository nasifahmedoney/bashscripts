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


#output
#if okay write output in file1 else file2
#ls -al 1>file1.txt 2>file2.txt
ls -al >& file1.txt #output & error same file

#read message from another script new_script1.sh
#run this script
MESSAGE="message to display on another script"
export MESSAGE
./new_script1.sh
'

: '
#read input from user and compare string length
echo "enter 1st string"
read srt1

echo "enter 2nd string"
read srt2

if [ "$str1" \> "$str1" ]
then
	echo "$str1 big $str1 small"
elif [ "$str1" \< "$str1" ]
then
	echo "$str1 big $str1 small"
else
	echo "string length are equal"
fi
'
#lower case, echo ${str^}
#upper case, echo ${str^^}




#arithmatic expressions

#n1=1
#n2=2

#echo $(( $n1+$n2 ))

#arrays
: '
arr=('a' 'b' 'c')
unset arr[1]
arr[1]='aa'
echo "${arr[@]}" #all elements

echo "${arr[0]}" #0 1 2 ...

echo "${!arr[@]}" #0 1 2 index positions

echo "${#arr[@]}" #total number of elements
'
#functions
: '
function tesing_function()
{
	variable="this is a var"
	echo "$variable"
}

tesing_function

'


#check folder exists in this dir
: '
echo "enter dir name"
read dirname

if [ -d "$dirname" ] #-f for files
then
	echo "exists"
else
	echo "does not exist"
fi
'

#sending email

#downloading files
: '
url=""
curl ${url} > outputfile #or curl ${url} -O #info: curl -I ${url}
'



#select
: '
select a in b c d e
do
	echo "selected $a"
done

'

#switch case
: '
select a in b c
do
	case $a in 
	b)
		echo "b selected";;
	c)
		echo "c selected";;
	*)
		echo "error";;
	esac
done
'


#inotify-tools
#sudo apt install inotify-tools
: '
inotifywait -m /home/user/monitor
'




#grep, finding text in a file
: '
echo "enter filename"
read filename

if [[ -f $filename ]]
then
	echo "text to search"
	read grepvar
	grep -i -n $grepvar $filename # -i -n ignore case, -i -n -c found number of times, -i -n -c -v ignoring the lines containing the word, command in terminal: man grep
else
	echo "file not found"
fi
'

#awk finding a word in a line containing the word given
: '
echo "enter filename"
read filename

if [[ -f $filename ]]
then
	awk '/hello/ {print $1}' $filename #/hello/ {print $1,$2,$3} for multiple words,/hello<-find this word in a line/ 
else
	echo "file not found"
fi
'




#sed, replace word in file or in console only

: '
read filename
sed 's/word in file/replace with/g' $filename #g global all occurance, without g first occurance only in every line

sed -i 's/word in file/replace with/g' $filename #write in file
'


#debug bash script

: '
run command: bash -x ./new_script.sh
or 

#! /bin/bash -x

or
#! /bin/bash
-x starting

+x stops in between


