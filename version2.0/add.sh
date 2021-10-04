 function add()
{
 read -p "enter the number  " num1
 read -p "enter the number " num2
    sum=$(($1 +$2))
     echo "sum = $sum"
}
a=10
b=20
add $a $b
