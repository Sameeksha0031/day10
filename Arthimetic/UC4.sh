read -p "Enter a number" a
read -p "Enter a number" b
read -p "Enter a number" c
echo "Three User Inputs are :"$a $b $c
#compute
compute=`echo $a $b $c | awk '{print $3 + $1 / $2}'`
echo $compute
