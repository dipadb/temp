
Ten Duk9:45 AM
#!/bin/bash -x

counter=0

Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Orange"

echo ${Fruits[0]}       #Element #0
echo ${Fruits[@]}       #All element, space-separated
echo ${#Fruits[@]}      #Number of Element
echo ${#Fruits}         #String length of 1st Element
echo ${#Fruits[3]}      #String length of nth Element
echo ${Fruits[@]:2:1}   #Range (From position 3, length 2)
echo ${Fruits[*]}       #same as Array[@]
kanchan jaiswal9:46 AM
#!/bin/bash -x

max1=0;
max12="unset";
temp=0;
declare -a ARRAY1
for i in  {1..10}
do
	x=$((($RANDOM%900)+100))
	ARRAY1[i]=$x
done

echo ${ARRAY1[*]}


declare -a asc
for ((j = 0; j <= 10; j++))
do
  for ((k = $j; k <= 10; k++))
  do
    if [ ${ARRAY1[$j]} -gt ${ARRAY1[$k]} ];
     then
        temp=${ARRAY1[$j]}
        ARRAY1[$j]=${ARRAY1[$k]}
        ARRAY1[$k]=$temp
   fi
  done

done 

echo "Array in sorted order :"
for (( i=0; i <= 10; i++))
do
 echo ${ARRAY1[$i]}
done
