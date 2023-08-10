if [ $# -eq 1 ]

then

echo "Number of arguments is 1"

find . -type f | ls |  | grep "$1"


else

for i in $*

do

if [ -f $i ]

then

cat $i | grep "$1"

fi

done

Fi



===========

f [ $# -eq 1 ]

then

echo "Number of arguments is 1"

for i in `ls`

do

        if [ -f $i ]

        then


                cat $i | grep "$1"

        fi

done


else

for i in $*

do

if [ -f $i ]

then

cat $i | grep "$1"

fi

Done


====================
Using grep -c alone will count the number of lines that contain the matching word instead of the number of total matches. The -o option is what tells grep to output each match in a unique line and then wc -l tells wc to count the number of lines. 


##given arguments readd a word to check iff  that appear more than c10 times inn both the file


echo "Enter the word :"

read target


echo "Enter the count to check :"

read countcheck


if [ ! -e $1 ] || [ ! -e $2 ]

then

     echo "File doesnt exist"

     exit

fi

check=0

for i in $*

do

     count=`grep -o -i  $target $i | wc -l`

     echo "count in file $i : $count"

     if [ $count -ge $countcheck ]

     then

             check=1

     else

             check=0

             exit

     fi

done


if [ $check -eq 1 ]

then

     echo "True"

else

     echo "False"

fi


===========================



choice='y'

while [ $choice == 'y' ]

do

echo "1) Copy file"

echo "2) Delete file"

echo "Enter choice to continue or not [y/n]?"

     read -p "Enter your choice:" ch

     case $ch in

     1)bash copyfile.sh $1 $2

     ;;

     2)bash 2.sh $2

     ;;

     *)echo "Default condition"

     exit

     ;;

     esac

read choice

Done

grep -E '(fear)?less' file.txt
grep -E 'fatal|error|critical' /var/log/nginx/error.log
grep -E '[[:digit:]]{3,9}' file.txt

grep -E 's+right' file.txt
grep -E 'b?right' file.txt
grep '^linux$' file.txt
grep 'acce[np]t' file.txt

ls -l | tr -s ' ' | cut -d ' ' -f 1,9 | tail -6 | grep '^[d\-]rwx ' (rwx file permissions will be taken.)

(//shyam) 
if [ $# \< 2 ]
then
        for i in *
        do
                if [ ! -d "$i" ]
                then
                        grep -l "$1" "$i"
                        grep "$1" "$i"
                fi
        done
else
        echo "The file name: $0."
        for i in "${@:2}"
        do
                grep "$1" "$i"
                grep -l "$1" "$i"
        done
fi
