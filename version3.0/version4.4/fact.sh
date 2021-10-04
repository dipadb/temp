f=1;
read -p "Enter the number" n
while [ $n -gt 1 ]
do f=$((f*n))
n=$((n-1))
done 
echo $f
